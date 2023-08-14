Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C92E377C0F1
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 21:41:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229646AbjHNTlB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Aug 2023 15:41:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232290AbjHNTk7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Aug 2023 15:40:59 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EF9810FA
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 12:40:57 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-307d58b3efbso4103473f8f.0
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 12:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692042056; x=1692646856;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tnT4YPa8nNOE82Rm8E36xDO3rg3Ol06s32kJVf5CeCo=;
        b=V28BKbrgWZl0am8yS4+7nWM/U21DC779FhQWXYexL4DPpn3wh3IzS09EJDBkM0VPbd
         0EHAExRsn3PaMz/jg8P7I/Vb7N9i2rd0vTzHOwPbP2QzlWR6VxNMa+QA1AjTawqGcDvP
         ldru+5sWquL0o0rHdPSVDiMIA85f1E6Q6BDjdVXWngbHIEzDOfRBrJjoY17Ff0tAcUxc
         8cqbu3lM6n301EIdG2vAynJkjQOJoQ5/WM23g4lEGrjmYzj+9co9TIkui6up2JNpO50f
         mDAatDbSWMnJ0IpMsvzxOGPtTpuHqBcaoh7ulzyeP+YKJCthLKBmX6d8xSxPpT/Sw2q+
         JODQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692042056; x=1692646856;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tnT4YPa8nNOE82Rm8E36xDO3rg3Ol06s32kJVf5CeCo=;
        b=cjvWqg5YY1jPgsHLNk1hewYE7B4bzkCxZTLuDUESi1a/DyYTP+PVJLdMjqnSCKhPLN
         IK+QCcisOrXYXhlfGkVVjk4tEQxddeaRQ5hfIt2kQu+pOrKleMOXSQ1CIgSPR+lcAHiw
         oECndQZY5IhEgk/Gn/DKEfqsD1XPLOpKZ6P2jozuZwbi1DdfhPFV7Jt7q8MEdPq6e2il
         GN90J1cTgvaQ5kKmOTdh/iahqNmjExzHBnJ3hfWMvhRBy1LpmSFmbRxvkErnNgJyzH4B
         43TO/egLUFlFx08lb3ZGhaxn9a2D+AsWZaOapuZLtEZYXRUKtfpcBKxFPuLxb03jsYRj
         bSQw==
X-Gm-Message-State: AOJu0YzOSKxBcC3XgVh8wBm5Bd9QZh0M7nkz+I9Jaq80gr6oDnZbNotP
        NQ74arW+1X0AUd5Etm+ZkYz4IQ==
X-Google-Smtp-Source: AGHT+IFd4SakSpwe9eeXaVG5RHlJCYmoIG50o6eXgR/xz0Vjp4SEK6gcRxpVfXDJ2KQxaTO1UWhQAw==
X-Received: by 2002:a5d:484b:0:b0:313:e735:6d23 with SMTP id n11-20020a5d484b000000b00313e7356d23mr7754700wrs.22.1692042056076;
        Mon, 14 Aug 2023 12:40:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id f17-20020adff451000000b00317efb41e44sm15376508wrp.18.2023.08.14.12.40.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 12:40:55 -0700 (PDT)
Message-ID: <f694a5fc-8d84-4000-1bc8-ac6e6e75f404@linaro.org>
Date:   Mon, 14 Aug 2023 21:40:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 3/4] arm64: dts: fsd: Add Ethernet support for FSYS0
 Block of FSD SoC
Content-Language: en-US
To:     Sriranjani P <sriranjani.p@samsung.com>, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, richardcochran@gmail.com,
        alexandre.torgue@foss.st.com, joabreu@synopsys.com,
        mcoquelin.stm32@gmail.com, alim.akhtar@samsung.com,
        linux-fsd@tesla.com, pankaj.dubey@samsung.com,
        swathi.ks@samsung.com, ravi.patel@samsung.com
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jayati Sahu <jayati.sahu@samsung.com>
References: <20230814112539.70453-1-sriranjani.p@samsung.com>
 <CGME20230814112617epcas5p1bc094e9cf29da5dd7d1706e3f509ac28@epcas5p1.samsung.com>
 <20230814112539.70453-4-sriranjani.p@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230814112539.70453-4-sriranjani.p@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/08/2023 13:25, Sriranjani P wrote:
> The FSD SoC contains two instances of Synopsys DWC QoS Ethernet IP, one
> in FSYS0 block and other in PERIC block.


...

>  
>  	cpus {
> @@ -984,6 +985,27 @@
>  			clocks = <&clock_fsys0 UFS0_MPHY_REFCLK_IXTAL26>;
>  			clock-names = "ref_clk";
>  		};
> +
> +		ethernet_0: ethernet@15300000 {
> +			compatible = "tesla,dwc-qos-ethernet-4.21";

The requirement for entire Samsung and its flavors is to pass
dtbs_check. Since some months.

Does it pass?

Best regards,
Krzysztof

