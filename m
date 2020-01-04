Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B8AC8130484
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2020 22:11:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726478AbgADVLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Jan 2020 16:11:08 -0500
Received: from mail-il1-f195.google.com ([209.85.166.195]:37567 "EHLO
        mail-il1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726320AbgADVLI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Jan 2020 16:11:08 -0500
Received: by mail-il1-f195.google.com with SMTP id t8so39381486iln.4
        for <devicetree@vger.kernel.org>; Sat, 04 Jan 2020 13:11:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=qyoQKQJfODTyZbS5URI1sv4NTniZDyCb+lWHf5D5y/M=;
        b=MOyeatsG7qu+pMPOALwbanBgS97f6ddGaN8z5j6AJ65SKknMUQEXDj+YzRYr8ba2lZ
         DjsLEsjqdJSOgO/RpeXR8SwzOErIK8M6ANhMhi8VEwJe+TX1fVruhcNiwXmfb4yjykuk
         Bwsr8yOV5kI490mw0XEgva22fh1qgiaNjhnA2Bm6Jsy0HEOP/U/kUEtvnYQlTa2ovDs9
         raIUt5KUSI2Uxah/STw5hJMZ6XcDATvALRpXIyzT4YGotcBLzJBEpPG/8kmBDhqXvh0+
         P4JWwfmkg/IG0XvLdFYabj4PqWfbp+ci9s6GCHryVRYZH4GBzwn2UQhXDQXVNt7mcbFP
         kRqg==
X-Gm-Message-State: APjAAAU2+xghqUTKwAAmbqAPReCdAGN3BKoCR5pvhR9j1ZN+saCAAqgH
        XkIsef8OQhIdxNQ7ttP6aNF+y+8=
X-Google-Smtp-Source: APXvYqyJhwruzw2LtwR7gSPhxFg8VN265W4rMLEgGeOLGFRLUkM4nJvzu03ouxpO3KVeZi7QbC75vg==
X-Received: by 2002:a92:911b:: with SMTP id t27mr79610399ild.142.1578172266939;
        Sat, 04 Jan 2020 13:11:06 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id r7sm16006816ioo.7.2020.01.04.13.11.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2020 13:11:06 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2219b7
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Sat, 04 Jan 2020 14:11:04 -0700
Date:   Sat, 4 Jan 2020 14:11:04 -0700
From:   Rob Herring <robh@kernel.org>
To:     Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Cc:     Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/9] dt: bindings: lm3692x: Add ti,ovp-microvolt
 property
Message-ID: <20200104211104.GA19869@bogus>
References: <cover.1578134779.git.agx@sigxcpu.org>
 <e6d0ef33f264c4ae679e586a1533fc7a97975db7.1578134779.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e6d0ef33f264c4ae679e586a1533fc7a97975db7.1578134779.git.agx@sigxcpu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat,  4 Jan 2020 11:54:17 +0100, =?UTF-8?q?Guido=20G=C3=BCnther?= wrote:
> This allows to set the overvoltage protection to 17V, 21V, 25V or 29V.
> 
> Signed-off-by: Guido G�nther <agx@sigxcpu.org>
> Acked-by: Pavel Machek <pavel@ucw.cz>
> ---
>  Documentation/devicetree/bindings/leds/leds-lm3692x.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
