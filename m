Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03E965A93DA
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 12:03:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229631AbiIAKDY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 06:03:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233800AbiIAKDL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 06:03:11 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC99F138598
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 03:03:09 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id z29so15074482lfb.13
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 03:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ElinajmGRyEA/7kUWvvAoQ8g+JBnrs3JkypTY6iFF7s=;
        b=X+MrATdZh1UZTGynb/Dzub7qI1QesrWB98FpfrUmUotYAmDc0kTK+ROJ7yRiaSGXSx
         Fu8O2NmZDnXC2AFOuUI2j8YDI0qSp3tfo8R0HI0m20AvddsKT3C/xlc0m1l1WE/TACuX
         WboqfeS+lyUvK9V2oIjCk7X9KXpZRTNQtelBbWpfade51PMI7wA4Pmnc+8AD/bgmXJ60
         UyNf+JnKKnxTkNbnkvmUHFbyKEc+t4JmHBbkleN4Trz574b0r99EV0WOb8afByI2JEr7
         /Cqx4HIOL52YNrqtN9W3jYNtT7vRJTIysfN+8to6OhOPLqvqs+Y1e0+ASN68kTdHs58r
         ig6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ElinajmGRyEA/7kUWvvAoQ8g+JBnrs3JkypTY6iFF7s=;
        b=GQE82u/e/smCVjsG83700XzPrI7ob5e1tum+tbsAVrggTMTMtHwOMtJH95qhn+/jXW
         2suxeTF6nE7az3WZDagm/SbW4YJ3DAgDvFvDkdoLvEmp2XYWpFjDbEPcGSYl4dwT8hZn
         CDf2nM3DXXpoGiyAhsJxSl7guqfkQg4DXytl/fT94DvKILjLnvH19YqV/VVkwApHhiyQ
         hgdJ8Pp3o9hD525kw7tX/vJHyt6yQXqVSQTZzYmNdZA19ruWGMEoOtmTxeaf/4GEjj3Q
         GK5ZjataB6dVQjtjehrAlBXME2qve1OWjhcYW0aMwuk7ETpmIS0ftCrnjMPWEAlUFot4
         aemw==
X-Gm-Message-State: ACgBeo00Z1NIk6o/trdECN0e35jEn45NpgYAP9uMKj9VLOn0dR1mDtrk
        4K+2xL9Et5Xv915ziX+IYGrobQ==
X-Google-Smtp-Source: AA6agR7v7Yr/FZGtRyKXTpU39sJw49/csUMZA+FHNBFmhgxc3vFvH6+GMuDWVs/Q3lZ2iYg7xuBfJA==
X-Received: by 2002:a05:6512:23a5:b0:492:f76b:dfea with SMTP id c37-20020a05651223a500b00492f76bdfeamr10198420lfv.5.1662026588296;
        Thu, 01 Sep 2022 03:03:08 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id by12-20020a05651c1a0c00b002688bf9d4b3sm550576ljb.77.2022.09.01.03.03.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 03:03:07 -0700 (PDT)
Message-ID: <9b099e34-f35d-856d-f472-9d87fb7ddc1f@linaro.org>
Date:   Thu, 1 Sep 2022 13:03:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/2] dt-bindings: arm: qcom: document sc7280 and evoker
 board
Content-Language: en-US
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     mka@chromium.org, dianders@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20220901091253.93333-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20220901170958.2.Ief93544cd0cbfa412092f5de92de10d59a2a5b3a@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220901170958.2.Ief93544cd0cbfa412092f5de92de10d59a2a5b3a@changeid>
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

On 01/09/2022 12:12, Sheng-Liang Pan wrote:
> This adds Chromebook Evoker to the yaml.
> 
> Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>

Read the docs I already sent you. Do not use "This commit/patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

Best regards,
Krzysztof
