Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F0CE213C8B6
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 17:05:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728896AbgAOQFT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jan 2020 11:05:19 -0500
Received: from mail-ot1-f66.google.com ([209.85.210.66]:35983 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726165AbgAOQFT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jan 2020 11:05:19 -0500
Received: by mail-ot1-f66.google.com with SMTP id m2so11697643otq.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2020 08:05:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AIn1O5GCmKw7dugKJey6e6TvKV2y4GDiW1xXQSe2Ay0=;
        b=JkMdVe/1AhvzAI3X+J7CvmHyICvnMOxEwEMVzOqCs7BnbJJ6sgFzcZPuPuQLEvi648
         U10iz7JS3IWsFyRjGPYAJHUTt7MFdXTlbXkJPZhca8wH3o9I9m6orsHbgUjw2XgidLc8
         aO63hg3WzUd3+UAEi5JONvn3gA1yxFfJC+JWPWe6j207b+X4fhAxG42L/amzNVlKPsHc
         fNqLdv/l4VmUhc004Z1EuBarKFqdX/mLhUdSXSglWnmAb/JeMQ+7vt4srPKeeq5+s5iI
         oz1C9gm/uDY+49MF7OCTYrfLOy/+rRa+mzB6zHmzc3OPQDXwUrlc0m9ahqAqn9E18BrT
         fueA==
X-Gm-Message-State: APjAAAUsAjICtg/yvd3Glc3yjJdB+DX1hTDTIv97WToak7Hd4rIMj3mc
        0t5J722VYKLQaaY2M5859mkAwL8=
X-Google-Smtp-Source: APXvYqwq+HbRFJQDyMJ6Ag+3ga2Z+YSA0LFCf0umzYUGxV9XXqLw8jtoawm+Ez70AwRzGIokdb7Whg==
X-Received: by 2002:a05:6830:2053:: with SMTP id f19mr3087830otp.193.1579104318396;
        Wed, 15 Jan 2020 08:05:18 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a24sm5785650oic.10.2020.01.15.08.05.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 08:05:17 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 22040c
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 15 Jan 2020 10:05:16 -0600
Date:   Wed, 15 Jan 2020 10:05:16 -0600
From:   Rob Herring <robh@kernel.org>
To:     JC Kuo <jckuo@nvidia.com>
Cc:     gregkh@linuxfoundation.org, thierry.reding@gmail.com,
        robh@kernel.org, jonathanh@nvidia.com, linux-tegra@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, felipe.balbi@linux.intel.com,
        JC Kuo <jckuo@nvidia.com>
Subject: Re: [PATCH v1] dt-binding: usb: add "super-speed-plus"
Message-ID: <20200115160516.GA18911@bogus>
References: <20200113060046.14448-1-jckuo@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200113060046.14448-1-jckuo@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Jan 2020 14:00:46 +0800, JC Kuo wrote:
> This commit adds "super-speed-plus" to valid argument list of
> "maximum-speed" property.
> 
> Signed-off-by: JC Kuo <jckuo@nvidia.com>
> ---
>  Documentation/devicetree/bindings/usb/generic.txt | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 

Applied, thanks.

Rob
