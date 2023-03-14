Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 561256BA14A
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 22:16:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230110AbjCNVQo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 17:16:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230020AbjCNVQn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 17:16:43 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 069F83C7BF
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 14:16:43 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id rj10so6145792pjb.4
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 14:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678828602;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A4yXFC5kEIrOoz9jTRV57DIcg53WwWy9W/bNZzyign0=;
        b=HRExbX4BV1W2TAHPMgr31ISDoP8zuFPeFmPoD7jvpXGhjgZKLBy635ZA53s3+dJoqx
         lK/ILvrIPm4yCp9Bny7rexH6Yh2a1/YDBJNyn+VbBnxwiKa7mbfDst5H4HSjUTci6Cn6
         RQ16dRpXfM0MXpI8SGnHNEHXkrNQ4qRcVK076ewe6huc+UIlFuC9dmj1U7Js5PXqvBFK
         SK2Zr7V9FyxR0rugNCDjY1s1OG9lZLOwBfkfRYDrwqm7Y/bcF7clj7eO7wJkWRiOgZzD
         /Uhc8p1H69N6XAg5ZHaBFqiB/BGZCBaeWr7xMwQ2W7dL18HS3Z0adBAaKyoIuAtsEgZk
         F3eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678828602;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A4yXFC5kEIrOoz9jTRV57DIcg53WwWy9W/bNZzyign0=;
        b=DDb6SWuvZF+f3IYxe++AzU1AlvbkNiDcqjcajlRZRz4Wp8JcN887F3jy37H1o1n8CR
         N/Rce0THb8Nr5GwPvSs4J4X4mt6mv+N1zKP+ljtBEHJkLzxExRMhilxZpBt7CENsIoHW
         auG9xeGJs8PIckB8kFezhbTfSHrGJ5MgvgPCm8sWTF81bRIOpheG1cxiqpbzvCLqAIzr
         3Ui5NUm/1GdBdONc96MCgKsrwiZyef8WiA9IHy6zBTFMDFOtfBaBuwxiUmQ56L00RFmV
         nntKMBEpG05/cB6BeygMDOzMrNsljlK/gCZZXpk25xsOKLxdCr+IcA02olE9Uw3ddfv2
         Gr2w==
X-Gm-Message-State: AO0yUKXVy5XpmICXHON/Dc1Ic0mgk8kVzB/rjOQqLaJykTKqqeQxdkE6
        YkkWVTBTb7O5nCPvu0VUFJ0=
X-Google-Smtp-Source: AK7set/ViibaNLhtrISMAUsvM/cpT3aOnX3a2A2xuHSs43ACb4u5zlMYqe6c+tblxcpxeNicv6No+A==
X-Received: by 2002:a17:902:e887:b0:19a:75b8:f50c with SMTP id w7-20020a170902e88700b0019a75b8f50cmr455763plg.31.1678828602324;
        Tue, 14 Mar 2023 14:16:42 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id p6-20020a1709026b8600b00195f0fb0c18sm2194941plk.31.2023.03.14.14.16.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 14:16:41 -0700 (PDT)
Message-ID: <4386dd43-c378-e030-a3e9-1e02b72610f3@gmail.com>
Date:   Tue, 14 Mar 2023 14:16:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/3] arm64: dts: broadcom: bcmbca: bcm4908: fix NAND
 interrupt name
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Brian Norris <briannorris@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20230228144400.21689-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20230228144400.21689-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/28/23 06:43, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This fixes:
> arch/arm64/boot/dts/broadcom/bcmbca/bcm94908.dtb: nand-controller@1800: interrupt-names:0: 'nand_ctlrdy' was expected
>          From schema: Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
> arch/arm64/boot/dts/broadcom/bcmbca/bcm94908.dtb: nand-controller@1800: Unevaluated properties are not allowed ('interrupt-names' was unexpected)
>          From schema: Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Applied to devicetree-arm64/next, all 3, thanks!
-- 
Florian

