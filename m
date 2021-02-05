Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5136C311993
	for <lists+devicetree@lfdr.de>; Sat,  6 Feb 2021 04:14:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230174AbhBFDNL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 22:13:11 -0500
Received: from mslow2.mail.gandi.net ([217.70.178.242]:35683 "EHLO
        mslow2.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232019AbhBFCuV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 21:50:21 -0500
Received: from relay12.mail.gandi.net (unknown [217.70.178.232])
        by mslow2.mail.gandi.net (Postfix) with ESMTP id 2BCC83B1F43
        for <devicetree@vger.kernel.org>; Fri,  5 Feb 2021 23:45:41 +0000 (UTC)
Received: from localhost (lfbn-lyo-1-13-140.w86-202.abo.wanadoo.fr [86.202.109.140])
        (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id D1F17200009;
        Fri,  5 Feb 2021 23:44:31 +0000 (UTC)
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-i3c@lists.infradead.org
Cc:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>
Subject: Re: [PATCH v5 0/6] Silvaco I3C master driver
Date:   Sat,  6 Feb 2021 00:44:29 +0100
Message-Id: <161256866173.4836.10256863699232447925.b4-ty@bootlin.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210121101808.14654-1-miquel.raynal@bootlin.com>
References: <20210121101808.14654-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 21 Jan 2021 11:18:02 +0100, Miquel Raynal wrote:
> Here is the addition of a driver for the Silvaco I3C master IP.
> 
> Changes in v5:
> * Added Rob's R-by when relevant.
> * Fixed the robots warnings by pushing a little bit forward the changes in the
>   mipi-hci binding file.
> * Fixed the I3C master node name regex.
> * Removed the redundant $ref: entries when the hz suffix is used.
> * Simplified a little bit the regexes defining the child nodes.
> * Updated the reg propertie description to better describe each entry.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: i3c: Convert the bus description to yaml
      commit: 5e4cdca887fdb445f962b3dbc2a2514d7c025d9b
[2/6] dt-bindings: i3c: mipi-hci: Include the bus binding
      commit: de67276e66fcfcd404516eebfd6436239dd9882a
[3/6] dt-bindings: Add vendor prefix for Silvaco
      commit: 57f7c9ff1b3fdc2cccb377207e538bf5f3ab03cf
[4/6] dt-bindings: i3c: Describe Silvaco master binding
      commit: b8b0446f1f1afd58e5a9ba14ab2caa08797f3bb5
[5/6] i3c: master: svc: Add Silvaco I3C master driver
      commit: dd3c52846d5954acd43f0e771689302f27dadc28
[6/6] MAINTAINERS: Add Silvaco I3C master
      commit: f06a1af8e739cb573b79cd175fd88534e912bea0

Best regards,
-- 
Alexandre Belloni <alexandre.belloni@bootlin.com>
