Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9695472306C
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 21:51:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236086AbjFETvo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 15:51:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236135AbjFETvS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 15:51:18 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08A52171B
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 12:50:55 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id e9e14a558f8ab-33b4b70693eso26835375ab.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 12:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685994642; x=1688586642;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QyOyM1A+IBGfM0POmQMPv/f9ETbkYMOC7LCngoA0Dg4=;
        b=ieQzsSYd+X9N5QDsysXMmt82+0/92OAcmD+askv9NjBU2/EOhLE/o/mwCNuw8iIaVs
         BFpXj6pFxHeb2maZP55p9C5n/WcGbVWe4wJO4lQXHjI7a/9p9Ddk7x9KtDR5YoYm2S9M
         RYjeLaJh+/JIF4PmYnB8kO7oWAMqaCGngWkTKSNOpQhGUpON7uVEC2NFhH5AU0bePTnm
         WL1P8ScaQGCUM5XvzEYuLheUA7k7e4BDsCUI6MwJz7ZZhhTQ9cK5HyhX4/HMgf1BlwCE
         Bp8JO4Qa2WTu1Wem+HdU4BDSbi4E8Wo4qcW/C03mKNKVaX+0nyAl2JdZfO2QcNDGTysu
         rK/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685994642; x=1688586642;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QyOyM1A+IBGfM0POmQMPv/f9ETbkYMOC7LCngoA0Dg4=;
        b=hOB0gGWTJq70OJwKyTxeHwMwKaQVmOPg/attdrzN5b3fXKoqdw6v23lbYeBN3H6mZs
         vjr+/gKZkRyHLIVRrTH0eOWuaU9n3ieJV6fjlIrN6qkPRSllFCPot51x+HB61hlEFNLJ
         qP57vuzl6pzHthe0sVWz/ClqHQcRtYp2Z6q/zEat8kRVLXTBb2HxcCj3uPFs+SOpZz7t
         QxSHxgubFAC+eOK2VQd3y63l4Nw/QY5HyklVVqPxAVeOd48m3NepXCeuYKsxTWGf3D5B
         kmTn9p1EzkbJ979P/mqs7baens1tIm/fnGRF77Pa1sN/Io0j0l1HL8bDTQ+/qpmbyUnm
         C3+A==
X-Gm-Message-State: AC+VfDxoy3C9CDN/LLc4Kq08NtX1zZKAE3yjElncpXV/+Hd5OPJKnl+V
        /0QOKcCP9sX78gNwAZ1DpcKsCQ==
X-Google-Smtp-Source: ACHHUZ6BhwUtmlaf2lOMd1GHOUuAjaXJN26jGa+2SmSTjPF6DxR8k+irXU6IZkfy55GvLcyjVOHa/w==
X-Received: by 2002:a05:6e02:78d:b0:33a:ff76:33b8 with SMTP id q13-20020a056e02078d00b0033aff7633b8mr132723ils.9.1685994641903;
        Mon, 05 Jun 2023 12:50:41 -0700 (PDT)
Received: from [172.22.22.28] ([98.61.227.136])
        by smtp.gmail.com with ESMTPSA id h2-20020a0566380f8200b0041653d00c1fsm2316886jal.72.2023.06.05.12.50.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jun 2023 12:50:41 -0700 (PDT)
Message-ID: <26a9ba82-4bb6-ef9b-f819-19feb5ddba03@linaro.org>
Date:   Mon, 5 Jun 2023 14:50:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From:   Alex Elder <elder@linaro.org>
Subject: Re: [PATCH v13 24/24] MAINTAINERS: Add Gunyah hypervisor drivers
 section
To:     Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     Murali Nalajala <quic_mnalajal@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>,
        Srivatsa Vaddagiri <quic_svaddagi@quicinc.com>,
        Carl van Schaik <quic_cvanscha@quicinc.com>,
        Prakruthi Deepak Heragu <quic_pheragu@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Will Deacon <will@kernel.org>, Andy Gross <agross@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230509204801.2824351-1-quic_eberman@quicinc.com>
 <20230509204801.2824351-25-quic_eberman@quicinc.com>
Content-Language: en-US
In-Reply-To: <20230509204801.2824351-25-quic_eberman@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/9/23 3:48 PM, Elliot Berman wrote:
> Add myself and Prakruthi as maintainers of Gunyah hypervisor drivers.
> 
> Signed-off-by: Prakruthi Deepak Heragu <quic_pheragu@quicinc.com>
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>

Looks good.

Reviewed-by: Alex Elder <elder@linaro.org>

> ---
>   MAINTAINERS | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c754befb94e7..323391320cf1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8970,6 +8970,19 @@ L:	linux-efi@vger.kernel.org
>   S:	Maintained
>   F:	block/partitions/efi.*
>   
> +GUNYAH HYPERVISOR DRIVER
> +M:	Elliot Berman <quic_eberman@quicinc.com>
> +M:	Prakruthi Deepak Heragu <quic_pheragu@quicinc.com>
> +L:	linux-arm-msm@vger.kernel.org
> +S:	Supported
> +F:	Documentation/devicetree/bindings/firmware/gunyah-hypervisor.yaml
> +F:	Documentation/virt/gunyah/
> +F:	arch/arm64/gunyah/
> +F:	drivers/mailbox/gunyah-msgq.c
> +F:	drivers/virt/gunyah/
> +F:	include/linux/gunyah*.h
> +F:	samples/gunyah/
> +
>   HABANALABS PCI DRIVER
>   M:	Oded Gabbay <ogabbay@kernel.org>
>   L:	dri-devel@lists.freedesktop.org

