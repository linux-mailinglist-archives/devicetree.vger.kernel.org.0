Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DE0694A23D
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 15:32:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729087AbfFRNce (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 09:32:34 -0400
Received: from mail.kernel.org ([198.145.29.99]:48762 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726088AbfFRNcd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jun 2019 09:32:33 -0400
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 5C86F206BA;
        Tue, 18 Jun 2019 13:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1560864752;
        bh=8yh3wEkEE2pEndjENjudtwDM8mV43VhghVvvQ6PvEI0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IXE5+PY5PzxuTH3qzl20pJTY8iMuOeDmrp/k5MPNoSd4z6VGQBvIfADnJGhUMAlRO
         yOepkYuGCeLoMDKPp6eKP3vdR5wXz+0401XhfBvbUvyRpUf6u7+yMp5fr2SALdoKTx
         q0immnC4tPpKrfboyaqD4N+PseccuQLSf2WX26bw=
Date:   Tue, 18 Jun 2019 21:31:41 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] dt-bindings: arm: fsl: Add back missing i.MX7ULP binding
Message-ID: <20190618133139.GI1959@dragon>
References: <20190617224028.26974-1-robh@kernel.org>
 <CAOMZO5DdAKH5N0vDq0tdnjarzWFkJrLg_OfuFoJj=qm7mw+Jzg@mail.gmail.com>
 <CAL_Jsq+nXVB3Pr961N1GAm5Pr-zAkvFPPxQvF18JO2r5N-Qx+g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+nXVB3Pr961N1GAm5Pr-zAkvFPPxQvF18JO2r5N-Qx+g@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 18, 2019 at 07:11:00AM -0600, Rob Herring wrote:
> On Mon, Jun 17, 2019 at 8:27 PM Fabio Estevam <festevam@gmail.com> wrote:
> >
> > On Mon, Jun 17, 2019 at 7:42 PM Rob Herring <robh@kernel.org> wrote:
> >
> > > +      - description: i.MX7ULP based Boards
> > > +        items:
> > > +          - enum:
> > > +              - tq,imx7ulp-evk            # i.MX7ULP Evaluation Kit
> >
> > This should be fsl,imx7ulp-evk instead.
> 
> Ugg. That was me typing in the wrong window...

Applied with it fixed.
