Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07D3E1F20A6
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2020 22:25:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726575AbgFHUZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jun 2020 16:25:13 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:40309 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726566AbgFHUZN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jun 2020 16:25:13 -0400
Received: by mail-io1-f66.google.com with SMTP id q8so20230195iow.7
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2020 13:25:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Yzej+h7enTPpNBl7Y1ncZc7Q3O01UFKi0SrjEfNkY2w=;
        b=m87wC+vAosoF53H85EmGHZQydHWNlUDjiK+TPDGLeg5+cQL1u93KV969roaCaEmlw+
         mEb9HtJ1vzYIHNCQc7tk8FsqkdhMCI2aJwNRkW9C1C3yUvx85ia65JOChcVOeXMboVQP
         KYQUZFKsLlllFDX/Z0X3PwQ4qgjNRuAyJmW53QV8imAFzfudG+xEuFET9xlgnlnL9kh5
         65eXlJNL7Kl0i5alOr5TTtcZeDsa+amp7NYSwkYkAS9fdoHkCg3HjUHyfwf5B4oofEIu
         Vey7e3FjuOeTSsx3cTvdQXwwFFY6pIVCgJrPHAR48Z3kn1g056dE7MndHnl8/VQ+uWE0
         np3Q==
X-Gm-Message-State: AOAM530EDwsgZ9ex/DbGeSjN6T6RwFk154dYIgjFifau+3GJFPL0u1u/
        Kf6I7x1MJcxYYPtzxHl6aA==
X-Google-Smtp-Source: ABdhPJwg4HQYga3VavAIaKMafde9aCj3gl+CUEMcMoRc6G1t9DPLQKn+7K2wUe6eYjD+5ORmUfcBVA==
X-Received: by 2002:a6b:e714:: with SMTP id b20mr24033479ioh.195.1591647912428;
        Mon, 08 Jun 2020 13:25:12 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id e3sm6300660iot.7.2020.06.08.13.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2020 13:25:11 -0700 (PDT)
Received: (nullmailer pid 3448068 invoked by uid 1000);
        Mon, 08 Jun 2020 20:25:10 -0000
Date:   Mon, 8 Jun 2020 14:25:10 -0600
From:   Rob Herring <robh@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     devicetree@vger.kernel.org
Subject: Re: [PATCH dt-schema] Fix interrupt controllers with interrupt-map
Message-ID: <20200608202510.GA3441535@bogus>
References: <20200528132323.30288-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200528132323.30288-1-geert+renesas@glider.be>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 28, 2020 at 03:23:23PM +0200, Geert Uytterhoeven wrote:
> When an interrupt controller has an "interrupt-map" property, an "is
> valid under each of" error is triggered.
> 
> Fix this by allowing "interrupt-controller" and "interrupt-map" to
> coexist, in both the interrrupts meta-schema and the
> interrupt-controller schema.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  meta-schemas/interrupts.yaml      | 2 +-
>  schemas/interrupt-controller.yaml | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied.

I'll queue the schema up for 5.9. That will mean updating dt-schema is 
required, but that's generally been true frequently anyways.

Rob
