Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45C2746C4B2
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 21:33:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231393AbhLGUgl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 15:36:41 -0500
Received: from mail-oo1-f49.google.com ([209.85.161.49]:39862 "EHLO
        mail-oo1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231583AbhLGUgk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 15:36:40 -0500
Received: by mail-oo1-f49.google.com with SMTP id d1-20020a4a3c01000000b002c2612c8e1eso112741ooa.6
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 12:33:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xA0nPE6R9nK4ea4eTkYln2f/j9/KE4TsDRpF5BuqXeU=;
        b=u3/Zgs5NT1A+UJZONK8elyFtN+0a0FOYWM+MKxs6Rh5JV6PK8mnFZtmWv+3U1oGh7s
         d6f1B9xYlg85aR/Dhg/ZOWlSjolUK6/rpdRiMUE90KPOC838ZVxlVrKY3dWS2NyMnPRP
         CAxbtqF6wORLlo/FiQ5iHJenaxCj93rpXkfSlez28QGGb9x9KONj5GbnA798YBq5yTFg
         0rNfZQs0d/278C+5dd7q4Vp39B51J5ZSm3yGeFoxhmEjFIrNg+g6nnFIsAHaGskmj2Mo
         R/DlUZqhirNTA0yFJSY+aEVe398Sv/mEnVYBPZeQmHlkm83fdcEunEoVL7Mw+hXwIEpQ
         H2Gg==
X-Gm-Message-State: AOAM532o52B7wKwDv3GQmeg4Gfdf0NNHxJUkl/jDiT90gKE4ewk33W5q
        dOVo0GWkf9qbDxG/0JM8+Q==
X-Google-Smtp-Source: ABdhPJwWWcfkVKcf53vjPAef3PQc1CO1KAF2Iyz9J/Jc878jOTzCjyP94u7dHBwv0jMkcX90NFycCQ==
X-Received: by 2002:a4a:3744:: with SMTP id r65mr28060318oor.11.1638909189142;
        Tue, 07 Dec 2021 12:33:09 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id l39sm140462otv.63.2021.12.07.12.33.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Dec 2021 12:33:08 -0800 (PST)
Received: (nullmailer pid 781697 invoked by uid 1000);
        Tue, 07 Dec 2021 20:33:07 -0000
Date:   Tue, 7 Dec 2021 14:33:07 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 2/3] dt-bindings: display: simple: Add Team Source
 Display TST043015CMHX panel
Message-ID: <Ya/FA4U+oJ1aejeo@robh.at.kernel.org>
References: <20211127031909.283383-1-marex@denx.de>
 <20211127031909.283383-2-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211127031909.283383-2-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 27 Nov 2021 04:19:08 +0100, Marek Vasut wrote:
> Add Team Source Display TST043015CMHX 4.3" 480x272 DPI panel
> compatible string.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
