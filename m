Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6C8C31466F
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 03:35:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230247AbhBICfC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 21:35:02 -0500
Received: from mail-ot1-f42.google.com ([209.85.210.42]:32918 "EHLO
        mail-ot1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229975AbhBICfB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 21:35:01 -0500
Received: by mail-ot1-f42.google.com with SMTP id 63so16226834oty.0
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 18:34:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Du1Bmsje6by6JYNnUliqkFlsVS8CyADvIvm7KKTqPpM=;
        b=I4aNvWHu3e1b3sMIRMZh4SZ+kEYNngYu5syyiYsglrQZPDwNgJs53ktXMVt3+y1BPX
         BBFAKmENGy93T36IMAKB177TqKYeY9AZxxnVxKa9Kz4nsCx+qOy6FFxOIxp1Rl4R6WEl
         ZunN3ZONiQduxiQ1B3UexTHYdbVqCRIUfpSa7VHiItJe63UEezBA+4eBGZyo3sUx3C5C
         3C8ZlqPoPEr/1GVasIJ9fER/VSzN4kuo6nRNWpEhOCeVKsGtK9bNpjki6LF5VYBneB1t
         jwpY+SFpDi7WTYKoEJMiOawbJqRMYVBG9Tatg+/bhoaoPP6IfOywgen1z2J8gTIsAAQb
         4KVg==
X-Gm-Message-State: AOAM533MZZFkKvnQPKSpG0L0cKJrHm14bWOr0/Ju8OhYxrvrJd0056mf
        CJ0GmIFxcgsM7XrUjL7jUA==
X-Google-Smtp-Source: ABdhPJzNpC+XXr19RjqFa9U2NyXvUn8HA6gUR1gMvLdzEIAfLPIjkrn4iyIW1eUSYldxkPOSeukq0Q==
X-Received: by 2002:a9d:4c10:: with SMTP id l16mr4035796otf.9.1612838060455;
        Mon, 08 Feb 2021 18:34:20 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z24sm1995826ote.1.2021.02.08.18.34.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Feb 2021 18:34:19 -0800 (PST)
Received: (nullmailer pid 2564165 invoked by uid 1000);
        Tue, 09 Feb 2021 02:34:18 -0000
Date:   Mon, 8 Feb 2021 20:34:18 -0600
From:   Rob Herring <robh@kernel.org>
To:     Dave Gerlach <d-gerlach@ti.com>
Cc:     Sekhar Nori <nsekhar@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>,
        linux-arm-kernel@lists.infradead.org,
        Tony Lindgren <tony@atomide.com>, devicetree@vger.kernel.org,
        Kishon Vijay Abraham <kishon@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>, Nishanth Menon <nm@ti.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: pinctrl: k3: Introduce pinmux
 definitions for AM64
Message-ID: <20210209023418.GA2564097@robh.at.kernel.org>
References: <20210120202532.9011-1-d-gerlach@ti.com>
 <20210120202532.9011-3-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210120202532.9011-3-d-gerlach@ti.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 20 Jan 2021 14:25:29 -0600, Dave Gerlach wrote:
> Add pinctrl macros for AM64 SoC. These macro definitions are similar to
> that of previous platforms, but adding new definitions to avoid any
> naming confusions in the soc dts files.
> 
> Unlike what checkpatch insists, we do not need parentheses enclosing
> the values for this macro as we do intend it to generate two separate
> values as has been done for other similar platforms.
> 
> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
> ---
>  include/dt-bindings/pinctrl/k3.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
