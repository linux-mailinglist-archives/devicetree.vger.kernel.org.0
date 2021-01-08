Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 505762EEB6F
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 03:43:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726410AbhAHCmy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 21:42:54 -0500
Received: from mail-io1-f49.google.com ([209.85.166.49]:43219 "EHLO
        mail-io1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725959AbhAHCmx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 21:42:53 -0500
Received: by mail-io1-f49.google.com with SMTP id o6so8301261iob.10
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 18:42:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wPiCz3MJAup9q9l5CzZP+3XdihV7IrCQNfuDIuI0X8I=;
        b=VmDgRk6bRat7a97KPaJRvBmm99WdwniJ7rcO2pyuH/4/fEobG0ELlyaSuDmeZRl0YM
         Guh4c3iFE8hwV7QLO1yuhD+8u+u8JtEEFVpvjEF7wUMy9YjN5yNBx3jM/UwahCoo6ywg
         DUOEU10gkluJvsxuND2s1qDpt+Lyhq8MA1Igw5VDhCPH8g3Hi8CD3eKHdkeGIgOOpzAR
         7MIvu+UG7WPeQ1in8bv5rDr/N6I2t5PDf/p7Rp2REkr9BODSnQ9FIMxUQNEJKFzcZptz
         EsNOI/qCfJPMVq2yXWjnI1O9TTan15ppazya4XeYBtE2jMbIwnpqT1MPkV+VuqJT76er
         Ling==
X-Gm-Message-State: AOAM532NqsEMu1g3LRaCN8iGFfEGowtxEK/p+cp4hz028id8P7qGBdbr
        YDTRAgJk2Eg3ubfilhfVpg==
X-Google-Smtp-Source: ABdhPJxQVjRZ0Wrjwd2ZJy8DocUyhqLv7WcP1cYZBrXrZQi4aW6pgorSpt9y84Tg2abze2DctZ3tyg==
X-Received: by 2002:a5e:dd0d:: with SMTP id t13mr3866409iop.132.1610073733311;
        Thu, 07 Jan 2021 18:42:13 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id j15sm6072781ile.1.2021.01.07.18.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 18:42:12 -0800 (PST)
Received: (nullmailer pid 1769172 invoked by uid 1000);
        Fri, 08 Jan 2021 02:42:09 -0000
Date:   Thu, 7 Jan 2021 19:42:09 -0700
From:   Rob Herring <robh@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        devicetree@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        bcm-kernel-feedback-list@broadcom.com,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: bcm2835-vec: Add power-domains property
Message-ID: <20210108024209.GA1769120@robh.at.kernel.org>
References: <1608751473-12343-1-git-send-email-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1608751473-12343-1-git-send-email-stefan.wahren@i2se.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 23 Dec 2020 20:24:33 +0100, Stefan Wahren wrote:
> Adding the missing property power-domains to the bcm2835-vec schema to fix
> the following dtbs_check issue:
> 
> vec@7e806000: 'power-domains' does not match any of the regexes: ...
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
>  Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
