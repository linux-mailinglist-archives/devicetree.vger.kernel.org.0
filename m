Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B28F6268A0
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 18:51:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730082AbfEVQvB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 12:51:01 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:46466 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729511AbfEVQvB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 May 2019 12:51:01 -0400
Received: by mail-lf1-f65.google.com with SMTP id l26so2197367lfh.13
        for <devicetree@vger.kernel.org>; Wed, 22 May 2019 09:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eBSXDkANBgLUVx9OLo92moigTFtbZ5KovHP1blJF2Gc=;
        b=ck2y+YWGqRzRM+Vd3h+4XTVQnRx/rAxzk/noRAkow2SPEjdeS7ujn6qBXRJpHkYA4F
         g9NqnU44wNO7WcqWcF02/HjTzgyNB5Rz5jLUANtm1QVb8B9zpZHqs2JJONyiAmVQmzCF
         gm4uGrWCcnYy95a1M3OUY0f8xF1o9P0WYfgFvHJnqZDzAlPC+7xU0c4BecsdPOTEw0Gc
         fH8/tUpgjcSaQpx0mAU20/4AlgZfl3rnY4iixDAbF0jfPnk7/05tbsoS27Ip7lyvMTUd
         v3+gyKCRbnFR05VaJKkY3CqeXSAbT7TFoHp+hnapECaHwsj5txQDikCUqvMmo4t3NiIf
         tNaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=eBSXDkANBgLUVx9OLo92moigTFtbZ5KovHP1blJF2Gc=;
        b=gp45nK21wyWhbmA1a4T/KvaDn0hsrHy6Bn8UgXlg8UsW1FTk/VYHCwb81+ZmU4C2Zc
         j/QyEKDAXPG+KvwmHKIOXqY15AM5fms5kljMwdg5DFn8W8vLAs4bXl7v0bb3el2BxVxS
         AM3ugCnuUjRk5MrFTLK45ORKz/7cySOimXA/rBvCuHZrMkHRsepcvKgplFwqwd89P05g
         A0YsiY2RmvGmXLzhxVVV+og0eRYXmyETGHQ1f43Ro9jOWVbDSC4qtzoWdNJqCpKiZjRB
         g6l/snVqMPbesPOq4kCNM5OnXf1uCOVHXBpfJY2sYkFaEAg2XY2GzBoStPauU0vzjD2X
         0pCA==
X-Gm-Message-State: APjAAAWV3EoGE38Ms9fIZqvV3IIPMU8ED51fBbJG8BRSZTodLasRJ2gT
        /iASfNRe4exmMJ9hjzcsDwbeJA==
X-Google-Smtp-Source: APXvYqzNXNjigWd25RZmKbplVNSK0GP5DxzU08I2e81d5SxF5XlLfH9gtqFEYes2C/9JbZ7VSJlF2g==
X-Received: by 2002:ac2:4989:: with SMTP id f9mr45296643lfl.12.1558543859462;
        Wed, 22 May 2019 09:50:59 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.81.14])
        by smtp.gmail.com with ESMTPSA id h14sm5411729ljj.11.2019.05.22.09.50.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 May 2019 09:50:58 -0700 (PDT)
Subject: Re: [PATCH v13 3/3] dt-bindings: mfd: Document Renesas R-Car Gen3
 RPC-IF controller bindings
To:     Mason Yang <masonccyang@mxic.com.tw>, broonie@kernel.org,
        marek.vasut@gmail.com, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, bbrezillon@kernel.org,
        linux-renesas-soc@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        lee.jones@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org
Cc:     juliensu@mxic.com.tw, Simon Horman <horms@verge.net.au>,
        miquel.raynal@bootlin.com
References: <1558423174-10748-1-git-send-email-masonccyang@mxic.com.tw>
 <1558423174-10748-4-git-send-email-masonccyang@mxic.com.tw>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <0e2994d6-6efc-9f36-f681-609199f20b9f@cogentembedded.com>
Date:   Wed, 22 May 2019 19:50:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1558423174-10748-4-git-send-email-masonccyang@mxic.com.tw>
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/21/2019 10:19 AM, Mason Yang wrote:

> Document the bindings used by the Renesas R-Car Gen3 RPC-IF controller.
> 
> Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> ---
>  .../devicetree/bindings/mfd/renesas-rpc-if.txt     | 65 ++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/renesas-rpc-if.txt
> 
> diff --git a/Documentation/devicetree/bindings/mfd/renesas-rpc-if.txt b/Documentation/devicetree/bindings/mfd/renesas-rpc-if.txt
> new file mode 100644
> index 0000000..20ec85b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/renesas-rpc-if.txt
> @@ -0,0 +1,65 @@
> +Renesas R-Car Gen3 RPC-IF controller Device Tree Bindings
> +---------------------------------------------------------
> +
> +RPC-IF supports both SPI NOR and HyperFlash (CFI-compliant flash)
> +
> +Required properties:
> +- compatible: should be an SoC-specific compatible value, followed by
> +		"renesas,rcar-gen3-rpc" as a fallback.
> +		supported SoC-specific values are:
> +		"renesas,r8a77995-rpc"	(R-Car D3)
> +- reg: should contain three register areas:
> +	first for RPC-IF registers,
> +	second for the direct mapping read mode and
> +	third for the write buffer area.
> +- reg-names: should contain "regs", "dirmap" and "wbuf"
> +- clocks: should contain 1 entries for the module's clock
> +- clock-names: should contain "rpc"
> +- power-domains: should contain system-controller(sysc) for power-domain-cell
> +- resets: should contain clock pulse generator(cpg) for reset-cell,
> +	  power-domain-cell and clock-cell

   That's just some nonsense, sorry...
   I suggest that you stop reposting your patches as I'm going to post
my version of this patchset RSN (based on your patches, of course) and I'm
going to take care of fixing this file as well.

> +- #address-cells: should be 1
> +- #size-cells: should be 0
[...]

MBR, Sergei
