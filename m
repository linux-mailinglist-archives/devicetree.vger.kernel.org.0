Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DFFD571C73
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 16:26:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233249AbiGLO0f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 10:26:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233569AbiGLO0Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 10:26:24 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D61AEB8EB0
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 07:26:15 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id a39so10061564ljq.11
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 07:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=rN4IXYR3m3yGnPFoHkgsKL/vRWpE1zFa3mY1W+QnYCk=;
        b=fEWJrdSfB6fZLSudcIvYEMFlS/kq4HmisifJ55zu556EGfDE0nPdvRJSMRrvgPANV2
         OZWWIC396ufPPN0Ory1ZvvDWakoqT4+YhbBRhgf0z4lHvriMz3l1JPgBmCo8xV5e4oy9
         FCIPyL2drYa4VeFO0Tes0vGhlTZcdm4vAhL02n1cXTx7jLYa3Dn3cR3FobNTqU1JVByz
         CjfGBXhtRlB6XdvV7d4baSvFNdoOpGRIoBih8N0XIE6qCd0iIQeU08398HSA+pmWw1a2
         2HtJNTHMVUZcmZdbh3Pvzmpc8mIX1dxlp+dTa/4ZHoYd2p7GYUAx1p+hinh8Jj9vd49k
         i5Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rN4IXYR3m3yGnPFoHkgsKL/vRWpE1zFa3mY1W+QnYCk=;
        b=xsnPubpjcHaZCU2CqCaGCFyejswiCPFYerPOVIxPVLa5GdU1czpKXp9Qf/Fy0oCt/I
         JetltuzEIOCk0DZQGUFHP4OEXNz1eiLqpLJYkL/X47J4U5Y7KCmcMMVj+jiWZmkB7p5v
         x6AuJXbd4MJjMtYC4ir4sAnCHiF+wTFx+RwTZfjVmdwtDsTPYgMwYIQ3s34p8KYG8Xef
         JnAg1ym0LYggXg5FWSl4PZByp8Z8jAyYvpRNLtI0rjB8MoRDIyaBTM964i2wm1Y1TK7S
         CLrJ6KN3SLnMSetRgU2lhgF+npfUoE5f2osIhCYhAas8unsCLTrKy//MUXiFQj6qnMRV
         cgYA==
X-Gm-Message-State: AJIora+Rw9GwTcdQMUaQ60WC5ICHvAH8Hcyk/mlEcvm5RHTHPvvv0bo0
        OLV/kLAdzZyEJ/hHPobI/nPPCw==
X-Google-Smtp-Source: AGRyM1uNiFXa5cvCHVCaXsmLGYP8AmWO1cEYMhoZpcZXmOdyns7XEJwSPzvj2Yh2qxQqcA2KKpqYfw==
X-Received: by 2002:a2e:964c:0:b0:25d:6910:134b with SMTP id z12-20020a2e964c000000b0025d6910134bmr7151351ljh.299.1657635973984;
        Tue, 12 Jul 2022 07:26:13 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id q3-20020a05651232a300b004875a37b7b7sm2197518lfe.159.2022.07.12.07.26.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 07:26:13 -0700 (PDT)
Message-ID: <c91dd953-5ef6-ca71-cdc0-30d6b3bc6a8e@linaro.org>
Date:   Tue, 12 Jul 2022 16:26:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: Add support for Xiaomi Mi Mix2s
Content-Language: en-US
To:     MollySophia <mollysophia379@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20220708020648.6675-1-mollysophia379@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220708020648.6675-1-mollysophia379@gmail.com>
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

On 08/07/2022 04:06, MollySophia wrote:
> Add support for Xiaomi Mi Mix2s (polaris) handsets.
> 
> Currently working features:
> - UFS
> - Touchscreen
> - USB 2
> - Bluetooth
> - Wi-Fi
> - GPU
> - Venus
> - Display (need jdi-fhd-nt35596s panel driver, which I have sent a
>   patch but it haven't been into upstream yet)
> 
> Signed-off-by: MollySophia <mollysophia379@gmail.com>

This is third version the same day and five in three days - too much.

You miss changelog so seeing so many patchsets without changes (or
unknown changes) is even more confusing.

https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst


Best regards,
Krzysztof
