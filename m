Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67E3147C7CD
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 20:53:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241921AbhLUTx3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 14:53:29 -0500
Received: from mail-qv1-f42.google.com ([209.85.219.42]:45760 "EHLO
        mail-qv1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229779AbhLUTx2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 14:53:28 -0500
Received: by mail-qv1-f42.google.com with SMTP id a9so243922qvd.12
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 11:53:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=inhzLUzVk01mb2/NsFRt+qCJNW848Xt0oNeOLwfZLYg=;
        b=BCNYUWyqgwhTI+ykaGXb8EdR0sdeHvNtI0QPn07lrC3l2DUE54Bl1aLZolfjcdkE6B
         jAqtp2LyL+8fD/B0pvpCD0i4j2rq2RR971X09LXcysp5rHd8LYu3kYz4Ae2n9ZwLi8vr
         r/c9bILSz7CbOIzdQ6goyxIqqHGsdA+0feq09yn+gC/SfwsBRm+1PXrWhX0jhjJFE5lO
         VAX/kMNRNnvVcnevCaE9ygzK5vso4hwDriuKiPGzE1gDZ8lnEGlq0wzDueb5UaAUYIEu
         IqkSxgNtdYCNW5ICXtqvSFhumVxddGHgkFKCZW1g+iqU+qTLpUQUSNKDxW12IJUCUTIy
         8dSg==
X-Gm-Message-State: AOAM531BB1FwtZBc3aPbCjyoHxbcaogBHk9HkGZO1TZX8riI5UYbKI+s
        fwSVw8IeQxBBT97FF+6p8w==
X-Google-Smtp-Source: ABdhPJy+s2cGnxE3IhTQslgrHswM1Pf/g+KTtweTfco05upr9r2sS6TKOHUkkz9IBvD8vbZKX6JELg==
X-Received: by 2002:a05:6214:27e6:: with SMTP id jt6mr4114227qvb.7.1640116408210;
        Tue, 21 Dec 2021 11:53:28 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
        by smtp.gmail.com with ESMTPSA id r23sm13219102qkk.25.2021.12.21.11.53.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 11:53:27 -0800 (PST)
Received: (nullmailer pid 1642209 invoked by uid 1000);
        Tue, 21 Dec 2021 19:53:26 -0000
Date:   Tue, 21 Dec 2021 15:53:26 -0400
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@mailbox.org>
Cc:     alsa-devel@alsa-project.org, Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH v2 1/3] ASoC: dt-bindings: Use name-prefix schema
Message-ID: <YcIwtgtvdCiEMoRP@robh.at.kernel.org>
References: <20211218143423.18768-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211218143423.18768-1-alexander.stein@mailbox.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 18 Dec 2021 15:34:21 +0100, Alexander Stein wrote:
> name-prefix.txt does not exist anymore, just reference the schema instead.
> 
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> Changes in v2:
> * Fix 'pass' -> 'true'
> 
> .../devicetree/bindings/sound/simple-audio-amplifier.yaml | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
