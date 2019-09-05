Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 61630AAD36
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 22:40:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389171AbfIEUkL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 16:40:11 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:38315 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731390AbfIEUkL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 16:40:11 -0400
Received: by mail-pl1-f193.google.com with SMTP id w11so1935607plp.5
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 13:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=VpJQlHdzOL058GU4wP50cEjksEXzOUX3pb5wvWLJu64=;
        b=Gey3+CNrdw64IW7vegKv4QWSElXeflb3/Gxy6dQ2wD/aUu5pkiNOpTrKaCmRUsOMSy
         zUTs/UyK7dICk5MzNYx5SWhQYTmIZ8CGeYZNwFv5FytESHKQucDLj12213hLkrRiA3h0
         ZW9R8hEaNJzR+xxm0cVuXW+OxS+SEHN3+KPDdandS5SRTgiO5VNlTu1Ano4df2zNrEMd
         DjA2BWRrdgJOoQjA61B4zk0ntC2jme7mMIdmWVUpW/u9JS2Dps+6Uq7BT0kaAOvlJGxi
         Hi4xiO33WQEvM9fSPVzsTXSMhtoegaqTVyCWvY2ocYACd2ZMXC0DDzsX74dttYU01bXd
         M+PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=VpJQlHdzOL058GU4wP50cEjksEXzOUX3pb5wvWLJu64=;
        b=F6RtbbWJk+A0aw9vezk6q3FFE5NcyhUARcjhvv+3IMRbJfATRsnkz8M8K9axF9bRx6
         mX4LXmO8B79OqSvL7sIp9cc7PVIUejyJqIyLKX7vzUJpdFkm28pX8Tny0H3HJUn8CzxI
         qCp3zEvDW6/QB91gCJn4XnaHqKQORAT50+N0FReL08eJAfsIEXK/qxD3tF+H0Ox0YF/M
         Bpj16hyepv5Lli30vEtANxS4wbX8H2f6PT1/cg9RCIf2gRAc2UeMG39p7XF4CO+4S+dj
         qUO5tf4kItV3/NQjs3MZz7PJdphkri+HL+8+1lxNrJCwN6FS1ubXGQg4oY4a2U7MSGdd
         riTQ==
X-Gm-Message-State: APjAAAUeDAE2a81dMaHEscj5R/LHXhrIJeAcybRlhFuKkNCT+G600A+l
        xRMREj5QhOT1DzObAY2BnYmeEA==
X-Google-Smtp-Source: APXvYqyAQ4j/FUjC8TaAxYwTxb/knA75vtgilVu+e635/0e4hiV75mi8XILgeD8bJPqHj3zWdWW4jw==
X-Received: by 2002:a17:902:708c:: with SMTP id z12mr5615924plk.173.1567716010812;
        Thu, 05 Sep 2019 13:40:10 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id m4sm4706664pgs.71.2019.09.05.13.40.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 05 Sep 2019 13:40:10 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson: sm1: set gpio interrupt controller compatible
In-Reply-To: <20190902160334.14321-1-jbrunet@baylibre.com>
References: <20190902160334.14321-1-jbrunet@baylibre.com>
Date:   Thu, 05 Sep 2019 13:40:09 -0700
Message-ID: <7hpnkeqxxy.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> Set the appropriate gpio interrupt controller compatible for the
> sm1 SoC family. This newer version of the controller can now
> trig irq on both edge of the input signal
>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

Queued.

I may do a late round for the dev cycle of v5.4, otherwise this will go
for v5.5.  If it goes for v5.5, it should probably have a Fixes tag, no?

Kevin

> ---
>  arch/arm64/boot/dts/amlogic/meson-sm1.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
> index 521573f3a5ba..6152e928aef2 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
> @@ -134,6 +134,11 @@
>  	power-domains = <&pwrc PWRC_SM1_ETH_ID>;
>  };
>  
> +&gpio_intc {
> +	compatible = "amlogic,meson-sm1-gpio-intc",
> +		     "amlogic,meson-gpio-intc";
> +};
> +
>  &pwrc {
>  	compatible = "amlogic,meson-sm1-pwrc";
>  };
> -- 
> 2.21.0
