Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C351F7D8F6
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 12:03:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726739AbfHAKDM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 06:03:12 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:39871 "EHLO
        mail-qk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725790AbfHAKDM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 06:03:12 -0400
Received: by mail-qk1-f196.google.com with SMTP id w190so51486414qkc.6
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 03:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZZULYWPYrE8rlpihwiyMSrwBcvrGlh1a6lKdrHXU+DE=;
        b=yaOQFN1cXAHFGR6HJF5zWpTxEZawdshDVdIzv7UMZws9hF7VpgPqBUkt+OaHTvxXua
         i8w471kVP0keSgCewY3pHO4e9MnnuN5582Ni6sQON3RCW8mwvvYRnK9PCIZ4lyhAIHSY
         ims66j0E3nj2zbLQfW27pPzGXqiU+Q015g3sI+A+fzxWiH9ZefE9396+QNd7qQnVlKgD
         cN4EZUuAMUZwHpA0pMKtq7Fapj3lg/ajYHcOXKVNXlGWTHHtVY9HWVPWXf2uA8kMhJdd
         JkL+iA1FebZH0NTGaP/5erTpubHa8aYSRifDKiJ+/eWfFtSZ5glqdAGM1R3UZ1IlZu//
         z2SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZZULYWPYrE8rlpihwiyMSrwBcvrGlh1a6lKdrHXU+DE=;
        b=WgHAX4X7DOtw54ZtCh2paCV3DiGbx9PzyxP962Z5491s/9PwU0MOiCRs6lD6JJkkz5
         wOsaaPvmXKeWujjYVMI2JduTcpBd9o0ItE2ABw0utxsrXKzzp7jRPaKcoJkG2+7m5/0f
         5W77JsVCGxp0UQEPPd+9jwUm7l7Yac8amyHGPV6JC3n2oNBz605YWGdD69kuW8kdXbwy
         YYVuqYabS97JhOoAEpPifrQhGQm9tf3XeNATS7uxtBpF9T7ma8JCJOIArW8QJVaCmF0c
         2x5t47Ztx4roYS0JFw22hpUCszC0ZpZGusS1wPZBYlKTzAxBQfPd1H6L6Jzk70qXGt97
         O6Bg==
X-Gm-Message-State: APjAAAXmg1lZJaX97cRfQR+L05dQYztSTmLoLmlTY62CumY9YjeU5CjK
        ATJw8AuSUieeZhiX5LTRhUwc2T3fEyUXGe1ILxJ8cQ==
X-Google-Smtp-Source: APXvYqyz75Bk81npKkd4YeyxzGOm77tl18qT7r4AADcTXVp+RE9M4XnBkdfTmfTW09SzYaBB6otcJQMnCCmj576+r7c=
X-Received: by 2002:a37:4e8f:: with SMTP id c137mr82670521qkb.127.1564653791552;
 Thu, 01 Aug 2019 03:03:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190801095049.13855-1-vkoul@kernel.org> <20190801095049.13855-2-vkoul@kernel.org>
In-Reply-To: <20190801095049.13855-2-vkoul@kernel.org>
From:   Amit Kucheria <amit.kucheria@linaro.org>
Date:   Thu, 1 Aug 2019 15:33:00 +0530
Message-ID: <CAP245DX5thWe-+mTH-oNeNRa_LRNX=oLvtNhQ=vt7Ukb6wrF9Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: pms405: add unit name adc nodes
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 1, 2019 at 3:22 PM Vinod Koul <vkoul@kernel.org> wrote:
>
> The adc nodes have reg property but were missing the unit name, so add
> that to fix these warnings:
>
> arch/arm64/boot/dts/qcom/pms405.dtsi:91.12-94.6: Warning (unit_address_vs_reg): /soc@0/spmi@200f000/pms405@0/adc@3100/ref_gnd: node has a reg or ranges property, but no unit name
> arch/arm64/boot/dts/qcom/pms405.dtsi:96.14-99.6: Warning (unit_address_vs_reg): /soc@0/spmi@200f000/pms405@0/adc@3100/vref_1p25: node has a reg or ranges property, but no unit name
> arch/arm64/boot/dts/qcom/pms405.dtsi:101.19-104.6: Warning (unit_address_vs_reg): /soc@0/spmi@200f000/pms405@0/adc@3100/vph_pwr: node has a reg or ranges property, but no unit name
> arch/arm64/boot/dts/qcom/pms405.dtsi:106.13-109.6: Warning (unit_address_vs_reg): /soc@0/spmi@200f000/pms405@0/adc@3100/die_temp: node has a reg or ranges property, but no unit name
> arch/arm64/boot/dts/qcom/pms405.dtsi:111.27-116.6: Warning (unit_address_vs_reg): /soc@0/spmi@200f000/pms405@0/adc@3100/thermistor1: node has a reg or ranges property, but no unit name
> arch/arm64/boot/dts/qcom/pms405.dtsi:118.27-123.6: Warning (unit_address_vs_reg): /soc@0/spmi@200f000/pms405@0/adc@3100/thermistor3: node has a reg or ranges property, but no unit name
> arch/arm64/boot/dts/qcom/pms405.dtsi:125.22-130.6: Warning (unit_address_vs_reg): /soc@0/spmi@200f000/pms405@0/adc@3100/xo_temp: node has a reg or ranges property, but no unit name
>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>


> ---
>  arch/arm64/boot/dts/qcom/pms405.dtsi | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/pms405.dtsi b/arch/arm64/boot/dts/qcom/pms405.dtsi
> index 14240fedd916..a28386900a3b 100644
> --- a/arch/arm64/boot/dts/qcom/pms405.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pms405.dtsi
> @@ -88,41 +88,41 @@
>                         #size-cells = <0>;
>                         #io-channel-cells = <1>;
>
> -                       ref_gnd {
> +                       ref_gnd@0 {
>                                 reg = <ADC5_REF_GND>;
>                                 qcom,pre-scaling = <1 1>;
>                         };
>
> -                       vref_1p25 {
> +                       vref_1p25@1 {
>                                 reg = <ADC5_1P25VREF>;
>                                 qcom,pre-scaling = <1 1>;
>                         };
>
> -                       pon_1: vph_pwr {
> +                       pon_1: vph_pwr@131 {
>                                 reg = <ADC5_VPH_PWR>;
>                                 qcom,pre-scaling = <1 3>;
>                         };
>
> -                       die_temp {
> +                       die_temp@6 {
>                                 reg = <ADC5_DIE_TEMP>;
>                                 qcom,pre-scaling = <1 1>;
>                         };
>
> -                       pa_therm1: thermistor1 {
> +                       pa_therm1: thermistor1@77 {
>                                 reg = <ADC5_AMUX_THM1_100K_PU>;
>                                 qcom,ratiometric;
>                                 qcom,hw-settle-time = <200>;
>                                 qcom,pre-scaling = <1 1>;
>                         };
>
> -                       pa_therm3: thermistor3 {
> +                       pa_therm3: thermistor3@79 {
>                                 reg = <ADC5_AMUX_THM3_100K_PU>;
>                                 qcom,ratiometric;
>                                 qcom,hw-settle-time = <200>;
>                                 qcom,pre-scaling = <1 1>;
>                         };
>
> -                       xo_therm: xo_temp {
> +                       xo_therm: xo_temp@76 {
>                                 reg = <ADC5_XO_THERM_100K_PU>;
>                                 qcom,ratiometric;
>                                 qcom,hw-settle-time = <200>;
> --
> 2.20.1
>
