Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D82C58F499
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 00:58:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232777AbiHJW6a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 18:58:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230282AbiHJW63 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 18:58:29 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4E8666111
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 15:58:27 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id p132so19425017oif.9
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 15:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc;
        bh=aD8W/mU/w9DXCUMu8xmgdZ40S1mS8qDFS7ArMahu2hc=;
        b=nkyVsblhhsBlRF+8PqzMawD8WiimmDlyEgDDHiIM70mJeUlGRrWSyyPOOHc6d8bidw
         G2/mMrelMlcaPrwdrVkVNOtuDN9Vt054xEfCle2FsYcJX6A8Aj++Hz4F6vvfVGAa3VFE
         TNymzBUYzxqzcFui3TrMabNCGIR+mAs3A0f14=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc;
        bh=aD8W/mU/w9DXCUMu8xmgdZ40S1mS8qDFS7ArMahu2hc=;
        b=kd8uouX+zQrl4nknMsdr2vMluANbkrAU1AaLYaOLzipZ1bn0r8kIyrp4YPrTNLr6ks
         khca4h6gpwjX9jVsYgjD5090KgGDuu/edQxVj/76/WLBgVcuf2gHb4OIKy64wZQqK81w
         Xeo0UVurYnCCmQxUZ0TFZWBHA4ifSNuA56zOKjFHd58wbuPPlFleG92XMwj6aKI5aILs
         OZJVOmFo/yBioxOOkLTwZzKMxXnzU2MtdM4/YqxvUFBmiiDAbqxzVcpPD4HSjdPt2fFi
         BxTDLLlpaMBNMGpwXOzg47GF35CpXgna5xQ6HKZpgrjk4e+mYxtxqXNpS6sCobTQdp4E
         AJKg==
X-Gm-Message-State: ACgBeo2OcoA4MARJ1C3TqO3hL16MBaMcZNH6CT0uu8gqTk9OEHN2RL+Y
        d4SRZDrZx48u3JNUihDRE+trNwudtyrG6m5oLMNbG57dUSM=
X-Google-Smtp-Source: AA6agR7ODLBwGfYSSWidVfNdZ49unwaUF4wwuUR687QtAoXrutAU9yUvXQP1FFwuu9hNMbk7ixb7I9OAJFt9boAQL50=
X-Received: by 2002:a05:6808:1588:b0:342:ce6d:bfcd with SMTP id
 t8-20020a056808158800b00342ce6dbfcdmr2345405oiw.44.1660172307108; Wed, 10 Aug
 2022 15:58:27 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 10 Aug 2022 17:58:26 -0500
MIME-Version: 1.0
In-Reply-To: <1660107909-27947-2-git-send-email-quic_c_skakit@quicinc.com>
References: <1660107909-27947-1-git-send-email-quic_c_skakit@quicinc.com> <1660107909-27947-2-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 10 Aug 2022 17:58:26 -0500
Message-ID: <CAE-0n51uUxfa-XGCBb+b=gQ_z_GNoTfjxYxMJ4F-KuAGWJ5gcg@mail.gmail.com>
Subject: Re: [RESEND PATCH V4 1/3] arm64: dts: qcom: sc7280: Cleanup the
 lpasscc node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_tdas@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2022-08-09 22:05:07)
> Remove "cc" regmap from lpasscc node which is overlapping
> with the lpass_aon regmap.
>
> Fixes: 422a295221bb ("arm64: dts: qcom: sc7280: Add clock controller nodes")
> Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
