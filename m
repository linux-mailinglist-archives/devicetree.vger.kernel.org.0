Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFD8E34F497
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 00:48:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232985AbhC3WsX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 18:48:23 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:36629 "EHLO
        mail-ot1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232975AbhC3WsP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 18:48:15 -0400
Received: by mail-ot1-f45.google.com with SMTP id g8-20020a9d6c480000b02901b65ca2432cso17137396otq.3
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 15:48:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IaMR0ltx7ptnQCNHvoOiMLdhMEHzKC2qN/dsOC0+3eA=;
        b=ntVs7hdCH/VSS/YmoyKoqzmfAeavkHcBq51R6Fs22rK3jg7DcCZenv9Od+lEd3ZtO4
         UFjGM8lEzOSc8pbZmPimmysmM6c67PQxmylm2bi7wmMDdz53/4FBa5iAziRXCa6Ff40W
         Ul9xbaKyOjQo7eOxxPruhhYoOmsmHFgzjDyc8b3cF5n4Q0oFijjgliXWCjN++4rD5T/A
         TdXvIU5t+oPpzhSvniHjVw+1RCsz1Z5GvWNNyajLEhZ+4yscPo376Qn7RIjjyBTumOML
         4MWvHzetuoSzys2v24zNM7TFkL/2M6v6q1bwRrNBj3qs3HT+zqggo1vAiq5kNthEIEhk
         ek2w==
X-Gm-Message-State: AOAM530O1AMqMPxIaoKGK5+3HryzbpASWdAhI3eFy99NwTHEWcWTiIKA
        0GBJPTRNOVJ1WooggOq/wg==
X-Google-Smtp-Source: ABdhPJwmf4yKUnURSQTM5qcp+OFjDTsKPh5zSRisI75/A+OiUBUHQNKKhEOK0c8V7a7wmgLLBEMyYg==
X-Received: by 2002:a9d:2f65:: with SMTP id h92mr128348otb.327.1617144494449;
        Tue, 30 Mar 2021 15:48:14 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y194sm60830ooa.19.2021.03.30.15.48.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 15:48:13 -0700 (PDT)
Received: (nullmailer pid 854303 invoked by uid 1000);
        Tue, 30 Mar 2021 22:48:12 -0000
Date:   Tue, 30 Mar 2021 17:48:12 -0500
From:   Rob Herring <robh@kernel.org>
To:     Yunus Bas <y.bas@phytec.de>
Cc:     dri-devel@lists.freedesktop.org, thierry.reding@gmail.com,
        sam@ravnborg.org, devicetree@vger.kernel.org, airlied@linux.ie,
        daniel@ffwll.ch
Subject: Re: [PATCH 2/2] drm/panel: simple: Add support for EDT ETM0350G0DH6
 panel
Message-ID: <20210330224812.GA853122@robh.at.kernel.org>
References: <20210330070907.11587-1-y.bas@phytec.de>
 <20210330070907.11587-2-y.bas@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210330070907.11587-2-y.bas@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 30, 2021 at 09:09:07AM +0200, Yunus Bas wrote:
> From: Stefan Riedmueller <s.riedmueller@phytec.de>
> 
> This patch adds support for the EDT ETM0350G0DH6 3.5" (320x240) lcd
> panel to DRM simple panel driver.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> ---
>  .../bindings/display/panel/panel-simple.yaml  |  3 ++
>  drivers/gpu/drm/panel/panel-simple.c          | 29 +++++++++++++++++++
>  2 files changed, 32 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 57be1fa39728..9a6b42f911d1 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -107,6 +107,9 @@ properties:
>        - dlc,dlc1010gig
>          # Emerging Display Technology Corp. 3.5" QVGA TFT LCD panel
>        - edt,et035012dm6
> +        # Emerging Display Technology Corp. 3.5" WVGA TFT LCD panel with
> +        # capacitive multitouch
> +      - edt,etm0350g0dh6

Alpha-numeric order.

>          # Emerging Display Technology Corp. 5.7" VGA TFT LCD panel
>        - edt,et057090dhu
>        - edt,et070080dh6
