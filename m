Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE62C2A0C08
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 18:02:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727260AbgJ3RCN convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 30 Oct 2020 13:02:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726095AbgJ3RCN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Oct 2020 13:02:13 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BC0FC0613D7
        for <devicetree@vger.kernel.org>; Fri, 30 Oct 2020 10:02:13 -0700 (PDT)
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1kYXmz-0005F0-1e; Fri, 30 Oct 2020 18:02:09 +0100
Received: from pza by lupine with local (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1kYXmy-0002zA-4L; Fri, 30 Oct 2020 18:02:08 +0100
Message-ID: <4fe174b1fbb217bb59d6481dff8a02c2d0e7ac92.camel@pengutronix.de>
Subject: Re: [PATCH v2] dt-bindings: Convert graph bindings to json-schema
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Sameer Pujar <spujar@nvidia.com>, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Cc:     kuninori.morimoto.gx@renesas.com
Date:   Fri, 30 Oct 2020 18:02:08 +0100
In-Reply-To: <1604075956-17010-2-git-send-email-spujar@nvidia.com>
References: <1604075956-17010-1-git-send-email-spujar@nvidia.com>
         <1604075956-17010-2-git-send-email-spujar@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 2020-10-30 at 22:09 +0530, Sameer Pujar wrote:
> Convert device tree bindings of graph to YAML format. Currently graph.txt
> doc is referenced in multiple files and all of these need to use schema
> references. For now graph.txt is updated to refer to graph.yaml.
> 
> Signed-off-by: Sameer Pujar <spujar@nvidia.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>

Acked-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp
