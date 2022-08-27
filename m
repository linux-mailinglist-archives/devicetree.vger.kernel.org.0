Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 910275A362D
	for <lists+devicetree@lfdr.de>; Sat, 27 Aug 2022 11:10:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230179AbiH0JK2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Aug 2022 05:10:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbiH0JK1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Aug 2022 05:10:27 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEFAC1EAC9
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 02:10:24 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id h8so1243116lfm.8
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 02:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=G6ho+wRO8rYfvijcCTYxQupUsh3eLpJX8XZ+ppvdKQY=;
        b=fGscFtXgbDHXpFk63GwbntNDE6o+7JisIwbUxbp0Vi4Qhh+TpX0+yKOnhBCFXSLUXT
         1BSF8GKYsBUskl85vBT1MPmrUqi+kvUhZCZtxqryRH7NPrWwwcSHxpmrEcwQDbgm06Vn
         ezsnVfEA5epEL0oOzkChiYCEH5BeJrRs30PWfSE7OgUPaMcsCRxtqpS/4RVN8W/IaVOr
         B3b1wnWN0Zqu4DODkrs3PHNoZkd4DKhJSgEMR6e7SmqSz1j6dOPWDdXAJtcDRbT3ksTX
         UN0ISk//PBGj60C5f9m/VidGRBRMQ4whm0RWVFK6mNnGJfTFvmoCM37wFXBhJ8nJYIoe
         ILdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=G6ho+wRO8rYfvijcCTYxQupUsh3eLpJX8XZ+ppvdKQY=;
        b=2rI4HUtB/zsqNSNJJt2N8iKnJ1+RlTRB7lew8oI5Mpfhup4gC+DP/abQQRBlEjMWzx
         5HsXLZAxLoU6T91ltkcd9nVZ0pWjZya5NbDT9Eb1Yx0PS1KcVE60pyUdRkMtM143T3xP
         YmZyYXNfFAItxkw4j9rdFdZZo2wU1LMy5Z5GChLCMQZbeXkr1yNgS/fjxJBS0NYYLNf/
         71uTIHxe/3y1n6rcVr/41uJ/xFyMFWGJiHGGz4yLMqLsOeZqMx9zPBAmX9izIlLTuRIK
         aJidaPD6+YnavwrTa+VKW+jOVEwnDPVuKo+ztozaNOiU5X2op4X1NsBlBBEpTK2awq/o
         f/Lg==
X-Gm-Message-State: ACgBeo0dSh/tKDkdt0zgjvHmHALyJm9G5E1VAowYxKEXWydxa4wU/KpD
        YdcimMX0gE435NFqqb53/FGnPw==
X-Google-Smtp-Source: AA6agR7yPBM7OjOml60pN7cFppGPfr6PFS1ZfIsZXLAMYNOZJt4DKAXhiBvAkcvR0aL1wwqcBuNhkA==
X-Received: by 2002:a05:6512:21b2:b0:492:e97d:c5ee with SMTP id c18-20020a05651221b200b00492e97dc5eemr3886133lft.599.1661591423284;
        Sat, 27 Aug 2022 02:10:23 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id v23-20020a056512349700b00492e5219874sm606522lfr.258.2022.08.27.02.10.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Aug 2022 02:10:22 -0700 (PDT)
Message-ID: <9464bafc-1a91-ca2c-23a9-93c27d6d08c7@linaro.org>
Date:   Sat, 27 Aug 2022 12:10:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 3/4] dt-bindings: display: imx: add binding for i.MX8MP
 HDMI PVI
Content-Language: en-US
To:     Lucas Stach <l.stach@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Kieran Bingham <kieran.bingham@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
        kernel@pengutronix.de
References: <20220826192424.3216734-1-l.stach@pengutronix.de>
 <20220826192424.3216734-3-l.stach@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220826192424.3216734-3-l.stach@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/08/2022 22:24, Lucas Stach wrote:
> Add binding for the i.MX8MP HDMI parallel video interface block.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Marek Vasut <marex@denx.de>

Same question - how was it tested? This is v1, right?

Rest looks good, except Laurent's comments.


Best regards,
Krzysztof
