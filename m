Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22C174AAEFC
	for <lists+devicetree@lfdr.de>; Sun,  6 Feb 2022 12:29:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233937AbiBFL3u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Feb 2022 06:29:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233668AbiBFL3u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Feb 2022 06:29:50 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46FECC06173B
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 03:29:49 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 055454003D
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 11:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644146988;
        bh=Rt0CLAsAt//yNIPsU1fxnJ6fI6vrkoAOGL9+IE9dY2A=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=iyNF24RunQBqywPHV9APclAF/0SOPDNXAu21OGC1ZyQA+D55Sc7b0lcRa3C1Kh7Wk
         ligK6armJAAOJ9KwoPmmHURB2RAyrlq5yHzIif6T8xjP+S3NAA65CR/VgnBZ6IGZj0
         edw7i5Hm1avlcoMBJZQfiBHKUmbjs2d6+88kU4i8afju4us5s+va/2n2vhLfNAlYV5
         TOcHXgAoZ1B5dD3t6nW8F/kS4TXlVACtwNeLDpCWw551A3l71JO3C1HfyYSW7SwDEp
         XruJ96+HeTECWGXmyj0222wW5Mk43oo+FeOwZGVSuq/HEFpBvxd/sWW099RvydE2eC
         bG9feGuNwVzgQ==
Received: by mail-ej1-f69.google.com with SMTP id h22-20020a1709060f5600b006b11a2d3dcfso3695907ejj.4
        for <devicetree@vger.kernel.org>; Sun, 06 Feb 2022 03:29:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Rt0CLAsAt//yNIPsU1fxnJ6fI6vrkoAOGL9+IE9dY2A=;
        b=Wq242TLbOzozW0DvlhHlMj4e11Ys0eax7Goujb9+oLyENJHa3G/yltUXXIA1S3Eb9+
         tzBFGll/bryWy1AcXpq9mMPYeaqE7RhwhKpfjZJUF/CAAc+T4eaKqzHGSrTlyi2Cy99V
         FzKOGCTMuey3GYrSLZSnenNYt7nylSjN0/8FEDZ4FtRp+LRoq30n8WOjbFC5/gS4qxlr
         th0KoLmqUm0C9Gv7B6p5Pa7WPzWbe8W8sGLVO3++1N9ySdxt+Oj7CDe+RKlCv3XPyUjw
         CWeongvGGcKqKw61mcvJvfz/GZx5Ygs1UR4WOfufNSJ/+nkEGfG9wkWtemzWQZDvq0wA
         A/BA==
X-Gm-Message-State: AOAM531UOlfDEBvkBFn77zkwU1lEKEMBjNMhfKsTziaaJd8ty+P760zf
        0WC3j/wqKrXKC2TAPb0IlUwB58/yOXaj/6phHZ5VZsb0VS94lk7cIh2i5Zq+LgiifNX1m20GYmG
        8FilY04m8aOtutgMJL2jFJ889DYRRV9xoYMBb/Ag=
X-Received: by 2002:a05:6402:520d:: with SMTP id s13mr8442914edd.132.1644146987550;
        Sun, 06 Feb 2022 03:29:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyQUy24RjHPXGNrYXXd4Ep/1rz7beCD0Lisb4rFEaHdqI4+hhfFuwh3fhCM8vUwP90U+Eq35g==
X-Received: by 2002:a05:6402:520d:: with SMTP id s13mr8442890edd.132.1644146987417;
        Sun, 06 Feb 2022 03:29:47 -0800 (PST)
Received: from [192.168.0.83] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id ec40sm1776603edb.68.2022.02.06.03.29.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Feb 2022 03:29:46 -0800 (PST)
Message-ID: <04ef74c4-71f6-559c-f054-5267086abc22@canonical.com>
Date:   Sun, 6 Feb 2022 12:29:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH V1 07/10] arm64: tegra: Enable PCIe slots in P3737-0000
 board
Content-Language: en-US
To:     Vidya Sagar <vidyas@nvidia.com>, bhelgaas@google.com,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
        thierry.reding@gmail.com, jonathanh@nvidia.com
Cc:     kishon@ti.com, vkoul@kernel.org, kw@linux.com,
        p.zabel@pengutronix.de, mperttunen@nvidia.com,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, kthota@nvidia.com,
        mmaddireddy@nvidia.com, sagar.tv@gmail.com
References: <20220205162144.30240-1-vidyas@nvidia.com>
 <20220205162144.30240-8-vidyas@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220205162144.30240-8-vidyas@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/02/2022 17:21, Vidya Sagar wrote:
> Enable PCIe controller nodes to enable respective PCIe slots on
> P3737-0000 board. Following is the ownership of slots by different
> PCIe controllers.
> Controller-1 : On-board Broadcom WiFi controller
> Controller-4 : M.2 Key-M slot
> Controller-5 : CEM form-factor x8 slot
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  .../nvidia/tegra234-p3737-0000+p3701-0000.dts | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts b/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
> index efbbb878ba5a..b819e1133bc4 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
> +++ b/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
> @@ -21,4 +21,30 @@
>  	serial {
>  		status = "okay";
>  	};
> +
> +	pcie@14100000 {
> +		status = "okay";
> +
> +		phys = <&p2u_hsio_3>;
> +		phy-names = "p2u-0";
> +	};
> +
> +	pcie@14160000 {
> +		status = "okay";
> +
> +		phys = <&p2u_hsio_4>, <&p2u_hsio_5>, <&p2u_hsio_6>,
> +		       <&p2u_hsio_7>;
> +		phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3";
> +	};
> +
> +	pcie@141a0000 {
> +		status = "okay";
> +
> +		phys = <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
> +		       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
> +		       <&p2u_nvhs_6>, <&p2u_nvhs_7>;
> +		phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3", "p2u-4",
> +			    "p2u-5", "p2u-6", "p2u-7";
> +	};
> +

No need for trailing new line.

>  };


Best regards,
Krzysztof
