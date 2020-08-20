Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCEEB24B135
	for <lists+devicetree@lfdr.de>; Thu, 20 Aug 2020 10:39:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726431AbgHTIjt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Aug 2020 04:39:49 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:55678 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726666AbgHTIjs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Aug 2020 04:39:48 -0400
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E672A29A33B;
        Thu, 20 Aug 2020 09:39:46 +0100 (BST)
Date:   Thu, 20 Aug 2020 10:39:44 +0200
From:   Boris Brezillon <boris.brezillon@collabora.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Nicolas Pitre <nico@fluxnic.net>, linux-i3c@lists.infradead.org,
        devicetree@vger.kernel.org,
        Laura Nixon <laura.nixon@team.mipi.org>,
        Robert Gough <robert.gough@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthew Schnoor <matthew.schnoor@intel.com>,
        Nicolas Pitre <npitre@baylibre.com>
Subject: Re: [PATCH 2/2] i3c/master: add the mipi-i3c-hci driver
Message-ID: <20200820103944.08a55ba4@collabora.com>
In-Reply-To: <20200820100829.0e44200a@xps13>
References: <20200814034854.460830-1-nico@fluxnic.net>
        <20200814034854.460830-3-nico@fluxnic.net>
        <20200820100829.0e44200a@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 20 Aug 2020 10:08:29 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> > +		/*
> > +		 * TODO: Extend the subsystem layer to allow for registering
> > +		 * new device and provide BCR/DCR/PID at the same time.  
> 
> Not sure this is needed if you don't use it directly as the core will
> anyway (in its current form) send the relevant CCC to read these
> registers.

We considered optimizing that in the past but that means making the DAA
and SETDASA registration different. I'm not sure it's worth it to be
honest, PID/DCR/BCR only happens when initializing devices and I
suspect the overhead of querying those DATA twice in case of DAA is
negligible anyway.
