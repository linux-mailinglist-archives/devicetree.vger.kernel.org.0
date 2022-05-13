Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E778525D7B
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 10:38:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378190AbiEMIZT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 04:25:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378186AbiEMIZS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 04:25:18 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 099012A5E9D
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:25:17 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id t6so10409224wra.4
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=OLNggPi9wURTmTdFsJ5QHlI60DGgYDQ+f545MdR8tgw=;
        b=IOo2Iby+5VR8ErLhwrU821Fn+W4DVLNUoAN9xuJrocjsqzN8VwB1dwga+fSelG318+
         AqVAuNNVPV4Su802VSyGYu3/0JZLdTkuLxQH7y11xBqqwOYyUskn37OgrUMAKHyfinc0
         87UTWIQnadZt5WoQAYUHbUCgLSvnFDPh/a6Z/xJh0tRyh9UhsAu2rWgViktCm/Q5qyNJ
         NetdPnPRUWvpOgj+Uu1JGNTUh+S6JGqjCp0gj+hv7aA8dDIw94M755iWpN9Kb3fgPyXy
         E06pAqYseC8jCn2Hi+fO2vy+rgZwEkfMsutKNf6TOMaNOGbIi4Rxrg9QgKiSnhr1+yw7
         zYbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=OLNggPi9wURTmTdFsJ5QHlI60DGgYDQ+f545MdR8tgw=;
        b=MQwx5t3WIXivIkNyyBBxbsFp2BOQ9guI6nOubQbwPmOWlnQ0l8wCWjjPb5lXoiITFA
         TKHarlbP/J4w6qQKxbhFPL4/eLbEjh46J5QuUrEQbe4GV+WXSZv+GOrPV6C+XNiMHEsR
         5clBnS61HB8HAwqQAaeOr4hZyUHbtHEcDUdSXnLXHZuSSA4tVvok8Dy3HC50ski2rhK3
         akxWB5Lo+oqu+m5uhEBEOI0KH/MjrwV4vAGLy/CwJQr8ejbNJtR9NWWCTb7JF7YzS7VI
         pLfPgAl/4zsrM3jMKInHxSi/tAz/JiDYRCgnCmNDYKBrJYkvT8LN+0tb9bD0hv/+IFDv
         hYvw==
X-Gm-Message-State: AOAM532rbKXp8PJwQLJLeLeWucEz4bv/SUVFtpdNFz6/0ly5d64Z+ihB
        JZOSmTqvrO8JlwU/t3YF9AeuPg==
X-Google-Smtp-Source: ABdhPJzd4EUvFDocNzZ4P3/PAak/wGCKo5cLOmr0KT/Z0wzfclPL1LJJU+cIzeg2kp5UgiuN/yysEQ==
X-Received: by 2002:a05:6000:1d89:b0:205:e6d5:c571 with SMTP id bk9-20020a0560001d8900b00205e6d5c571mr2866654wrb.594.1652430315683;
        Fri, 13 May 2022 01:25:15 -0700 (PDT)
Received: from [192.168.0.169] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id j32-20020a05600c1c2000b00394832af31csm5464619wms.0.2022.05.13.01.25.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 01:25:15 -0700 (PDT)
Message-ID: <dfe8f305-f864-35fb-c05d-310f6b01376b@linaro.org>
Date:   Fri, 13 May 2022 10:25:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 7/7] arm64: dts: qcom: sm6125-seine: Configure additional
 trinket thermistors
Content-Language: en-US
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        phone-devel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220511220613.1015472-1-marijn.suijten@somainline.org>
 <20220511220613.1015472-8-marijn.suijten@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220511220613.1015472-8-marijn.suijten@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 00:06, Marijn Suijten wrote:
> +
> +&pm6125_gpio {
> +	camera_flash_therm: camera-flash-therm {

Align with dtschema please:

https://lore.kernel.org/all/20220507194913.261121-6-krzysztof.kozlowski@linaro.org/

> +		pins = "gpio3";
> +		function = "normal";

I think there are macros for the function

> +		bias-high-impedance;
> +	};
> +
> +	emmc_ufs_therm: emmc-ufs-therm {
> +		pins = "gpio6";
> +		function = "normal";
> +		bias-high-impedance;
> +	};
> +
> +	rf_pa1_therm: rf-pa1-therm {
> +		pins = "gpio7";
> +		function = "normal";
> +		bias-high-impedance;



Best regards,
Krzysztof
