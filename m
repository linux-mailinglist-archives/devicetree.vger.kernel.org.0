Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90E174650F2
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 16:07:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238987AbhLAPLB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 10:11:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238216AbhLAPLB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 10:11:01 -0500
Received: from relay05.th.seeweb.it (relay05.th.seeweb.it [IPv6:2001:4b7a:2000:18::166])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D43C6C061748
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 07:07:39 -0800 (PST)
Received: from [192.168.1.101] (83.6.166.111.neoplus.adsl.tpnet.pl [83.6.166.111])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id B7BC13F747;
        Wed,  1 Dec 2021 16:07:37 +0100 (CET)
Message-ID: <7449e40f-d8ac-3ee9-c453-163c1310ca9d@somainline.org>
Date:   Wed, 1 Dec 2021 16:07:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH 04/15] arm64: dts: qcom: sm8450-qrd: Add reserved gpio
 range for QRD
Content-Language: en-US
To:     Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20211201072915.3969178-1-vkoul@kernel.org>
 <20211201072915.3969178-5-vkoul@kernel.org>
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
In-Reply-To: <20211201072915.3969178-5-vkoul@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 01.12.2021 08:29, Vinod Koul wrote:
> Some tlmm gpios are reserved, so mark them as such in QRD DTS
>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> index 127d32502555..8dcd41c4e5ab 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> @@ -24,6 +24,10 @@ &qupv3_id_0 {
>  	status = "okay";
>  };
>  
> +&tlmm {
> +	gpio-reserved-ranges = <28 4>, <36 4>;
> +};
> +
>  &uart7 {
>  	status = "okay";
>  };
>
Personally I'd squash this into the patch that introduced the DT and

move it to the end of the series, but I reckon it's fine either way..


Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>


Konrad

