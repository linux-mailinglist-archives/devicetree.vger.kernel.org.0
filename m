Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFCBF6C3867
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 18:38:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230294AbjCURik (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 13:38:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230351AbjCURif (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 13:38:35 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 081825372B
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 10:37:37 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id b20so29855939edd.1
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 10:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679420247;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NSFN+vcAKBFw9CRrOYxwC+q3dw6MZ4zFCC9rNy3oZWA=;
        b=mB4V1KsAyRBedrHItqtzDgzZDsCtyU5w9IhYM+dAykklkQa0yAz+MMLvf94MYlP2g+
         h1AtfqvglvgRcnv4NrxkHxQ7rUqoHxCi1bTM4F8yXSdmeLmWUsvajReSsHHoAIYUhhcZ
         o7DERoqWNC7h2iO5IUORsDN9G8O0tH5g9NxLvMyL9Boej8KVKlP0orYNimYxHBtgLZkh
         Rm21t5ti8Ii49KzGtrGjclCKLDRz0++odTj0tgOtqwlwq5/dhtXzqM9nJIEuWHQfJVFJ
         P9MCWKSh0O4LyUBfE66V5awrIBFLQtCq5tJUnkVW8U/TGWvjkXlibG36M+EirAmjJa52
         KEfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679420247;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NSFN+vcAKBFw9CRrOYxwC+q3dw6MZ4zFCC9rNy3oZWA=;
        b=I0BZpod+rzCJJllpDkEQk9Pw/qyj92fgR0CLcD1TMSUwGmyF8bRrBMEL/hi6ZGZnMe
         ApU5/hGgy2/R06QmlrDl7A7cIJug7r6Ma/8UmVfK5cyxcQsylL1PGC8Md7CeiTB2NFRC
         Tv3sNk1ExMNd0TVvY1Aeqi+Ov3yMXosXucTP9wD/37HjXU2vTpARgabbUIVjRfA2pkQP
         S54TjmGiSpEFVe1BMLr4yHNNKbJogzlT83EO1Ifbc6Z6GAv1JHiq2dKdGtBNnYXr/OG6
         j/vlrqsfHATdenXCjdnm9Y4sCn6GVNIEgmPSA68WfBSktHE8Qjy6Z4ZUCoOUXHgV7Qsj
         XOXA==
X-Gm-Message-State: AO0yUKVKNgF15wZ6QenRyxsx0B8izXqqeEy5vTcy1Q7dKIRAhjc3K6LH
        +CmdYaz2qaQ14putKowntiXY5Q==
X-Google-Smtp-Source: AK7set8Uy9OaFw50NEy/nbItPw+/m/3jWKl13WeHGIOpVaMRPYTcSXDoBlgcKw3lU2R9ULIJw5BTTQ==
X-Received: by 2002:a17:907:a074:b0:923:c199:dab1 with SMTP id ia20-20020a170907a07400b00923c199dab1mr3530925ejc.55.1679420247526;
        Tue, 21 Mar 2023 10:37:27 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:2142:d8da:5ae4:d817? ([2a02:810d:15c0:828:2142:d8da:5ae4:d817])
        by smtp.gmail.com with ESMTPSA id w29-20020a50d79d000000b004bf5981ef3dsm6216731edi.94.2023.03.21.10.37.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 10:37:27 -0700 (PDT)
Message-ID: <611ea918-64a6-f306-b5ec-db55e41abda2@linaro.org>
Date:   Tue, 21 Mar 2023 18:37:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V1 3/4] soc: qcom: boot_stat: Add Driver Support for Boot
 Stats
Content-Language: en-US
To:     Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
References: <cover.1679403696.git.quic_schowdhu@quicinc.com>
 <3f385562845ae26d519940ca8098fde89282991b.1679403696.git.quic_schowdhu@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3f385562845ae26d519940ca8098fde89282991b.1679403696.git.quic_schowdhu@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/03/2023 14:51, Souradeep Chowdhury wrote:
> All of Qualcomm's proprietary Android boot-loaders capture boot time
> stats, like the time when the bootloader started execution and at what
> point the bootloader handed over control to the kernel etc. in the IMEM
> region. This information is captured in a specific format by this driver
> by mapping a structure to the IMEM memory region and then accessing the
> members of the structure to print the information. This information is
> useful in verifying if the existing boot KPIs have regre


> +/**
> + *  struct boot_stats - timestamp information related to boot stats
> + *  @bootloader_start:	Time for the starting point of the abl bootloader
> + *  @bootloader_end:	Time when the kernel starts loading from abl bootloader
> + */
> +struct boot_stats {
> +	u32 bootloader_start;
> +	u32 bootloader_end;
> +} __packed;
> +
> +static struct boot_stats __iomem *boot_stats;
> +static void __iomem *mpm_counter_base;
> +static u32 mpm_counter_freq;

No file-scope variables. Does not scale, not easy for review and
maintenance. Avoid such code.

> +
> +static int mpm_parse_dt(void)
> +{
> +	struct device_node *np_imem, *np_mpm2;
> +
> +	np_imem = of_find_compatible_node(NULL, NULL,
> +					  "qcom,imem-boot_stats");
> +	if (!np_imem) {
> +		pr_err("can't find qcom,imem node\n");

So you are printing errors everywhere, on every soc and with compile
test on every platform there is in the world... sorry, it does not work
like that.

> +		return -ENODEV;
> +	}
> +	boot_stats = of_iomap(np_imem, 0);
> +	if (!boot_stats) {
> +		pr_err("boot_stats: Can't map imem\n");
> +		goto err1;
> +	}


> +
> +static void __exit boot_stats_exit(void)
> +{
> +}
> +module_exit(boot_stats_exit)


I don't think this is some special code which deserves init calls. Make
it module_platform_driver().


Best regards,
Krzysztof

