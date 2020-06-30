Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73FBB20EB3C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2020 04:03:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726169AbgF3CDd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jun 2020 22:03:33 -0400
Received: from mail-il1-f196.google.com ([209.85.166.196]:40046 "EHLO
        mail-il1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726072AbgF3CDc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jun 2020 22:03:32 -0400
Received: by mail-il1-f196.google.com with SMTP id e18so5623032ilr.7
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2020 19:03:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=arq4AzF5CkvhiBn6DSLrfoxPguoNXuVsu2ZMowJNTtQ=;
        b=D/2iCGraaQ+kHhSa2sO6WFV5YgJjRjrbckuATPRa3YjZWxF0yZZWsytWOMS6mZ7wUO
         PZcdoVckSGPAjrzKJspjXgZG00Obo6q0bwpfGpsiMFFRi2gruV4M/kOpfnwJ8VnJNLkn
         /+CyX6o4/cB4T9HaQfxQBtxxiEfIJHOW+uX/4KT2Ca8BwFnjXhJ4xFwHLI70bN0lBrc5
         Gm8DSeHf06IpoBo0daLqbACInz4DtPF8BrXGIasmJQlr2iG4pGfsvzmJ92PoHaFJjpLX
         pKXrL3JxMjx2EWRtr0vnBtPRHqnPM3ipscO4VRc1TBNUT5g2NzTSORBL47SmkH84Odtp
         CnrQ==
X-Gm-Message-State: AOAM53122NjDPop7KOcAXYN2z+LByht20ihrW9ixlOpVcL7HYorQZo/Z
        bnOFtxdTTteZhu0CL9+Z0g==
X-Google-Smtp-Source: ABdhPJy4YdprQkBab9MNxn7MCyP0zBHmDtP3iUN4v9PGOMDumN1PdNL3gz2xqEUU0sWQx4F9dWvIow==
X-Received: by 2002:a05:6e02:8e4:: with SMTP id n4mr406791ilt.96.1593482611937;
        Mon, 29 Jun 2020 19:03:31 -0700 (PDT)
Received: from xps15 ([64.188.179.255])
        by smtp.gmail.com with ESMTPSA id a5sm882562ilt.71.2020.06.29.19.03.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 19:03:31 -0700 (PDT)
Received: (nullmailer pid 3467058 invoked by uid 1000);
        Tue, 30 Jun 2020 02:03:29 -0000
Date:   Mon, 29 Jun 2020 20:03:29 -0600
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, sam@ravnborg.org
Subject: Re: [PATCH] dt-bindings: display: arm: versatile: Pass the sysreg
 unit name
Message-ID: <20200630020329.GA3466998@bogus>
References: <20200629215500.18037-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200629215500.18037-1-festevam@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 29 Jun 2020 18:55:00 -0300, Fabio Estevam wrote:
> Pass the sysreg unit name to fix the following warning seen with
> 'make dt_binding_check':
> 
> Warning (unit_address_vs_reg): /example-0/sysreg: node has a reg or ranges property, but no unit name
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  .../bindings/display/panel/arm,versatile-tft-panel.yaml         | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!
