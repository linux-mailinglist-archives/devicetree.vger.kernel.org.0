Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11A24508FF7
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 21:06:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381635AbiDTTJK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 15:09:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1381629AbiDTTJH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 15:09:07 -0400
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 581D640927
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 12:06:20 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id q12so2463134pgj.13
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 12:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=J4PzEtiTOur79A+KeHolK5w4mrE8ln5MPaiq6ktcZkk=;
        b=F/RD09MdVncOxKSGQfxlvOInHCJLqYXBGWkpcU37SM44m1hM/7iRsufi4BP9ZWJjOL
         7bsHGYXBmK+DXkeqS+PxQL1HM76QDO2Ejjmw6haOEwqruCNQIqKMXirgzMPOhpmgoIxK
         3RoXTthB5c88D3fopLR4SPjRuCSsApTYo7l28=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=J4PzEtiTOur79A+KeHolK5w4mrE8ln5MPaiq6ktcZkk=;
        b=hKB413zY9ofUi6InI3dNpE7tzYiZIjpEleokah+UBNKgB1xTczDP1J6PsL8RJ4JRAM
         FRLhHuWvpWcXxOibeeFB7nMBNIJVsR02BciD/Lf/I40XRW+IVy2L+U/sFdFKFwLi+5Rj
         f10RwWOn1K8LzaTEi0kwuyPODz5Gz8wDjxNVjmqC2Rrfk0uN4f6dMKoK0JeQCfdibIom
         mvW6tIaT2GNWd7RyepnRMfB5oQvCIHA1vsuhDdeHXHIF3mES/l6DvQS2G7eZGpjehsf8
         6Qb6+VDVGKYEpeyZm5BF90qf/PQRmjoyhR0dHJ0unfUqZNnrhsdvz1mW3p6nToGngtoS
         rR9w==
X-Gm-Message-State: AOAM530f2+gxTd3g4JC0f6w766bprhEVvqJE0tDPSMk3eYXdBze52XU8
        5yYEIyXXl2OKiw0BwuXOVWU8TA==
X-Google-Smtp-Source: ABdhPJzZ84kqNce4PgBUWrZ42q6nwVtr0Agnns8Zc53iUTyr6Q6n81XQRZ8j6MRQeJAXKvyC7KKJAQ==
X-Received: by 2002:a65:5b0b:0:b0:3a8:2190:9a07 with SMTP id y11-20020a655b0b000000b003a821909a07mr18132152pgq.462.1650481579857;
        Wed, 20 Apr 2022 12:06:19 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:bd3c:1c9f:3771:d813])
        by smtp.gmail.com with UTF8SMTPSA id mu1-20020a17090b388100b001c77e79531bsm122739pjb.50.2022.04.20.12.06.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 12:06:19 -0700 (PDT)
Date:   Wed, 20 Apr 2022 12:06:16 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Sai Teja Aluvala <quic_saluvala@quicinc.com>
Cc:     marcel@holtmann.org, johan.hedberg@gmail.com,
        bjorn.andersson@linaro.org, agross@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, quic_hemantg@quicinc.com,
        quic_bgodavar@quicinc.com, quic_rjliao@quicinc.com,
        quic_hbandi@quicinc.com, abhishekpandit@chromium.org,
        mcchou@chromium.org
Subject: Re: [PATCH v4] Bluetooth: arm64: dts: qcom: sc7280: Add IO regulator
 handler in SC7280 CRD platforms
Message-ID: <YmBZqBidmpDrliT7@google.com>
References: <1650458740-16957-1-git-send-email-quic_saluvala@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1650458740-16957-1-git-send-email-quic_saluvala@quicinc.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 20, 2022 at 06:15:40PM +0530, Sai Teja Aluvala wrote:
> As IO regulator varies in different SC7280 platforms
> updating this handler in individual platform bluetooth node.
> 
> Signed-off-by: Sai Teja Aluvala <quic_saluvala@quicinc.com>
> ---
> v4: updated commit text
> v3: Updated commit text to reflect the change
> v2: updated reviewer comments.
> v1: intial patch
> ---
> ---
>  arch/arm64/boot/dts/qcom/sc7280-crd.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-crd.dts b/arch/arm64/boot/dts/qcom/sc7280-crd.dts
> index e2efbdd..6cbbddc 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-crd.dts

Your tree is outdated, this file has been renamed to sc7280-crd-r3.dts.
