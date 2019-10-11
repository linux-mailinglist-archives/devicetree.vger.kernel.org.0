Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 61AEED43EA
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 17:13:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726332AbfJKPN5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 11:13:57 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:43430 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726331AbfJKPN5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Oct 2019 11:13:57 -0400
Received: by mail-ot1-f68.google.com with SMTP id o44so8233989ota.10
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2019 08:13:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9Iafovyy6XzHHeXhOv1ugxykGatkGZoGKt/DDaK3zgI=;
        b=mX/du/UE3EAtKYB1fUjeAmg/oFc1xh9Nw7omOjDT/f3UfRR2zbzczjUVJJ1wtY/d9f
         R14U101oIu6CJ1RcoODdV68UPhOT9RItaTZkS5q43MgbV0IWTIuWqcynwip7pgR3mKsY
         S7L2jDZ8/cSAIZWu6iKKgZE6dCxhNTk6ZGg8vLmxsyjfVO3fjbH0zVjvbG1yOmhlAyUi
         06K7xRolnUCGzN1YXlnP4poW5In47d7B4nzNJUg7A1SYO5Q5BUW0uIMARXjDd9eVn1Wj
         Xo9bOgxRYII8OG/okMj3MZjK7hWCWYr4JaFKpJhZk+8qqBM77WWuXJudYn+7m3QjRwiQ
         E2mw==
X-Gm-Message-State: APjAAAVA5nIyQsMGOTl7ddzfHa2wHqrEqKTg9TWRTBBXHgdekjsof15v
        tS1qRVFi5uxpnC2YCe4+Lw==
X-Google-Smtp-Source: APXvYqzazgtvEUjORZSImAH/Nk6JEWLFTs8GB4oD1DDIGfpusPeKu4KM7HJ2qrKdg4eKfanW/ihJWQ==
X-Received: by 2002:a9d:77d4:: with SMTP id w20mr12801334otl.352.1570806836304;
        Fri, 11 Oct 2019 08:13:56 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i2sm2946148otf.19.2019.10.11.08.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 08:13:54 -0700 (PDT)
Date:   Fri, 11 Oct 2019 10:13:54 -0500
From:   Rob Herring <robh@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     broonie@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com
Subject: Re: [PATCH v2 06/10] ASoC: dt-bindings: cros_ec_codec: add SHM
 bindings
Message-ID: <20191011151354.GA12997@bogus>
References: <20191005085509.187179-1-tzungbi@google.com>
 <20191005164320.06.I0df85fe54162426e31f60a589d9b461c65df2faa@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191005164320.06.I0df85fe54162426e31f60a589d9b461c65df2faa@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 05, 2019 at 04:55:05PM +0800, Tzung-Bi Shih wrote:
> - Add "ec-shm" for binding to shared memory exposed by EC.
> - Add "memory-region" for binding to memory region shared by AP.
> 
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
> ---
>  .../bindings/sound/google,cros-ec-codec.txt   | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt b/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
> index 0ce9fafc78e2..cb46bc082b4b 100644
> --- a/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
> +++ b/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
> @@ -10,8 +10,26 @@ Required properties:
>  - compatible: Must contain "google,cros-ec-codec"
>  - #sound-dai-cells: Should be 1. The cell specifies number of DAIs.
>  
> +Optional properties:
> +- ec-shm: Shared memory region from EC.  It contains 3 unsigned 32-bit
> +          integer.  The first 2 integers combine to become an unsigned
> +	  64-bit address.  The last one integer is length of the shared
> +	  memory.

This is an address accessible to the main CPU? If so, then it really 
should be using 'reg' and be translatable.

> +- memory-region: Shared memory region to EC.  A "shared-dma-pool".  See
> +                 ../reserved-memory/reserved-memory.txt for details.
> +
>  Example:
>  
> +{
> +	...
> +
> +	reserved_mem: reserved_mem {
> +		compatible = "shared-dma-pool";
> +		reg = <0 0x52800000 0 0x100000>;
> +		no-map;
> +	};
> +}
> +
>  cros-ec@0 {
>  	compatible = "google,cros-ec-spi";
>  
> @@ -20,5 +38,7 @@ cros-ec@0 {
>  	cros_ec_codec: ec-codec {
>  		compatible = "google,cros-ec-codec";
>  		#sound-dai-cells = <1>;
> +		ec-shm = <0x0 0x10500000 0x80000>;
> +		memory-region = <&reserved_mem>;
>  	};
>  };
> -- 
> 2.23.0.581.g78d2f28ef7-goog
> 
