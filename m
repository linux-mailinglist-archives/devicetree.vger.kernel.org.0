Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2437E3CA520
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 20:12:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237724AbhGOSPs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 14:15:48 -0400
Received: from mail.kernel.org ([198.145.29.99]:38590 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237690AbhGOSPr (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 15 Jul 2021 14:15:47 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id AC4F8613D0
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1626372773;
        bh=Q7ZejC93/do3um+xGx7/9UltG9hfn0ekx7usuXvLHJA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=cgcKMGacae85AXoa538uKROgL+JC/4tzklN4EV4bWPp8e8aKTflXStowoM2frC81a
         IB/opccjWG7Q5rTF2i1wjPlv31At9tN6Hc80mOVjHzR+Uj+oG58Yrz3KAlYNxUx/li
         SnlIysOSkOyW1b8hbIzbpXchVi0LXWszgBxPnB4fyDNmXyAm/nSKjgqQcFaDoDvIlk
         Bm4BRJAIeAdOXOvKNZrtVFq1z/g75EuaZXnKtciJzBTEjiuSfLd+ow0S65mRXSMady
         mIKqOiy3LcWuTQthBUiP9P4WS1Qr76As3/2r3QrL+JlDO6yRUkd6xebwjFtfUQIAWf
         qysQl/N17Y7/A==
Received: by mail-qk1-f179.google.com with SMTP id t185so6087279qkd.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 11:12:53 -0700 (PDT)
X-Gm-Message-State: AOAM530linF5loDKTTxzT9s1xufHuTcVoeyrW0fPlf7EoAapNimFxDqD
        lQfrkpSXxoxiZJoxc+gDNZuLQz9uzpIB7CTt8A==
X-Google-Smtp-Source: ABdhPJygBZg5MlcEBLt9BT9Y+ZacoFSE9PZkHn02oGK3aQwrUVPaFMdJGEe0r5fuZrreziyOPgXvEdALeV6Daty8KQ8=
X-Received: by 2002:a05:620a:a1d:: with SMTP id i29mr5231014qka.311.1626372772954;
 Thu, 15 Jul 2021 11:12:52 -0700 (PDT)
MIME-Version: 1.0
References: <874kernyzk.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <874kernyzk.wl-kuninori.morimoto.gx@renesas.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 15 Jul 2021 12:12:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKoupwtgs8mDCKsQPS0+GRMQ9FjVAR=Cv+jpwRUKFdcfQ@mail.gmail.com>
Message-ID: <CAL_JsqKoupwtgs8mDCKsQPS0+GRMQ9FjVAR=Cv+jpwRUKFdcfQ@mail.gmail.com>
Subject: Re: audio-graph-port.yaml doesn't work ?
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 24, 2021 at 11:50 PM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
>
>
> Hi Rob
>
> I noticed that it seems "$ref: audio-graph-port.yaml#" is not working.
> For example, below is under "renesas,rcar.yaml" control which
> is using "$ref: audio-graph-port.yaml#" for ports/port and endpoint.
>
> "audio-graph-port.yaml" has "endpoint" properties,
> and below are not allowed by it.
> But there is no warning/error by
>
>         make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
>
> Am I misunderstanding ?

Sorry, I missed this. Independently, with some meta-schema
improvements I think I found the issue:

  ports:
    $ref: /schemas/graph.yaml#/properties/ports
    properties:
      port(@[0-9a-f]+)?:
        $ref: audio-graph-port.yaml#
        unevaluatedProperties: false

The problem is you have a regex under 'properties' so it's treated as
a fixed string.

Will send out a patch shortly.

Rob
