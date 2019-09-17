Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 421EAB55E1
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2019 21:02:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729728AbfIQTCR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Sep 2019 15:02:17 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:41643 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725927AbfIQTCQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Sep 2019 15:02:16 -0400
Received: by mail-ot1-f68.google.com with SMTP id g13so4040713otp.8
        for <devicetree@vger.kernel.org>; Tue, 17 Sep 2019 12:02:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QlvUu/7EAfaFx2gMfy9waFqB/50P6PISUPQGJqzue/s=;
        b=b7Q4AmX995MvX2m58t/sO46AQ6ZNdWQqTmfIqjuzyDc44LOvgX3WMVXE7RutP8nnNV
         xorO6yfgTB0AWSw6MzX1iYuC+lE37FzToKdfJEPbXdXyQZMWwtAauAOuE5aAtyQ7yysF
         nxHNkp+VEOp5TDpn3Dt90C0udii5wD7ezBdHZwPCkEKL5Ve0OtprUTKh8vlTGx+xC29j
         +plHizAkCIPHLxFux/OIHZTgEfpUvnxzvNTx+dtxCzVYNwRJ9gtaFIj5SdEwlNOY8UkD
         TMHBFMf9OaD/dBCTC27oNFuh5FamLqj9u6xwO+aM8OER8Ens96pop9A8fh93YDWBa7IY
         Jj1A==
X-Gm-Message-State: APjAAAX7ShjM/htiUPuim+TElFNbAgwzN3HocVApkCAZ9PS4GfNecvB/
        /Pi9Ql0pLki2JV2BW4lB7g==
X-Google-Smtp-Source: APXvYqy2Jk647wLh+T9cbKDUIIqeL8OFFmcgG7XrhimUWJ4jvaqNnTMnSFgdCnH83A+Rsx5xLe87bw==
X-Received: by 2002:a9d:e92:: with SMTP id 18mr265396otj.321.1568746935862;
        Tue, 17 Sep 2019 12:02:15 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id k93sm964698otc.30.2019.09.17.12.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2019 12:02:15 -0700 (PDT)
Date:   Tue, 17 Sep 2019 14:02:14 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 2/2] ASoC: dt-bindings: Convert Allwinner A23 analog
 codec to a schema
Message-ID: <20190917190214.GA8947@bogus>
References: <20190906151221.3148-1-mripard@kernel.org>
 <20190906151221.3148-2-mripard@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190906151221.3148-2-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri,  6 Sep 2019 18:12:21 +0300, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> The Allwinner A23 SoC and later have an embedded audio codec that uses a
> separate controller to drive its analog part, which is supported in Linux,
> with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> ---
> 
> Changes from v2:
>   - Use an enum instead of a oneOf for the compatibles
> 
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../allwinner,sun8i-a23-codec-analog.yaml     | 38 +++++++++++++++++++
>  .../bindings/sound/sun8i-codec-analog.txt     | 17 ---------
>  2 files changed, 38 insertions(+), 17 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>
