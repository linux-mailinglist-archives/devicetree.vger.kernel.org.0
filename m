Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 857C529E30B
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 03:46:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726484AbgJ2Cov (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 22:44:51 -0400
Received: from mail-oo1-f68.google.com ([209.85.161.68]:39527 "EHLO
        mail-oo1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726528AbgJ1VeL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 17:34:11 -0400
Received: by mail-oo1-f68.google.com with SMTP id j12so234175oou.6
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 14:34:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PHfkq2GIgrBhlirWwFbPBHgiYurDsTixDdYprqWD+Wc=;
        b=NBrLUHzLao6Oxa53fPvPDRaU8Nn1HQZrdoFlXQJiHwqju1eK0qLRLVyGBK+/wTDJK9
         gPKuspAkFQh/XrxANe0UDBD/nI+boRtA35j7lE5dKPGpaAHzIp0OQ5EqKuu2WEXd5lfP
         FHGvK7MRIF6QSoAQSDQ5zgr3TywjG4q2vdB2XqGJWm+/1RYF1Ks0HOnevWqP3hhzTNkG
         e1ryfZiMjsrhkjGmnNJVu23b1Isuvw7TZt6ZCgFq02Crd+WvbvfU7MHdTYVvyjwmvYfP
         OpxxhWVcJA9JhZrQ9GITvUP/qjTI4uI+kdOgbemCoSUqdASvpqef4bZTkvZUfRzLGYTd
         D8uQ==
X-Gm-Message-State: AOAM531jzE0MjKyUCOneZV4dWjY8BpnBFPRdczuhf04R+8Rw6XrxLlif
        sGeBkWgPQ6vn9Yg0eG1Mnz68ebKUrA==
X-Google-Smtp-Source: ABdhPJx5rbPL2vDT9KgX5Jp6773wb6fBHFQ2bUYzR1oysz2iTs2skeRf4thvqhm6psmEVygYKD6J2Q==
X-Received: by 2002:a9d:3d26:: with SMTP id a35mr8047otc.54.1603901069581;
        Wed, 28 Oct 2020 09:04:29 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id x25sm2725124oie.17.2020.10.28.09.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 09:04:28 -0700 (PDT)
Received: (nullmailer pid 4105730 invoked by uid 1000);
        Wed, 28 Oct 2020 16:04:27 -0000
Date:   Wed, 28 Oct 2020 11:04:27 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sameer Pujar <spujar@nvidia.com>
Cc:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/3] ASoC: dt-bindings: audio-graph-card: switch to
 yaml base Documentation
Message-ID: <20201028160427.GA4094628@bogus>
References: <87a6wfay7t.wl-kuninori.morimoto.gx@renesas.com>
 <878sbzay6u.wl-kuninori.morimoto.gx@renesas.com>
 <75ca7528-3177-46cb-73c5-46e32e63ad44@nvidia.com>
 <87h7qgw848.wl-kuninori.morimoto.gx@renesas.com>
 <eba1f18a-0b2e-d52b-593a-9ef5304f9199@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eba1f18a-0b2e-d52b-593a-9ef5304f9199@nvidia.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 27, 2020 at 11:33:49AM +0530, Sameer Pujar wrote:
> Hi Morimoto-san,
> 
> > > > From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> > > > 
> > > > This patch switches from .txt base to .yaml base Document.
> > > > 
> > > > Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> > (snip)
> > > Since I am trying to re-use most of audio-graph for Tegra, can
> > > 'compatible' be moved to a separate schema?
> > > For example,
> > > audio-graph.yaml -> defines all the common stuff
> > > audio-graph-card.yaml -> audio-graph.yaml + 'compatible' property
> > > Similarly, tegra-audio-graph-card.yaml -> audio-graph.yaml + Tegra
> > > 'compatible' property
> > I'm not expert of Json-Schema, and it sound very expert technique for me.
> > (It always indicates me unknown errors...)
> > I'm posting this patch since many month ago, and not yet accepted
> > for many reasons (audio-graph DT is very complex).
> > I spend many times for it and finally come to the point where it
> > can (might) be accepted.
> > I'm sorry but I want to finish this work,
> > this means I don't want to customize it any more.
> > If I try it, it needs more month...
> 
> I am not a json-schema expert either :) From earlier comments on Tegra audio
> graph series, above re-use is possible I suppose. I depend on your
> audio-graph documentation and for 'compatible' I am seeing error. So I
> thought it may be fine to split audio-graph into two json-schemas now
> itself. Otherwise I need to do it separately in my series if I want to
> re-use your audio-graph, which is fine with me.

I think this part must be sorted out. Defining the graph schema could 
come later though.

With compatible dropped from audio-graph.yaml, 
audio-graph-scu-card.yaml would look like this:

allOf:
  - $ref: audio-graph.yaml

properties:
  compatible:
    const: audio-graph-scu-card

unevaluatedProperties: false


However, What is 'audio-graph-scu-card' supposed to mean compared to 
'audio-graph-card'. It's never used by the driver or in any dts file.

Rob

