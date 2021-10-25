Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 746C543A618
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 23:45:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233146AbhJYVrn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 17:47:43 -0400
Received: from rosenzweig.io ([138.197.143.207]:48210 "EHLO rosenzweig.io"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230201AbhJYVrn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Oct 2021 17:47:43 -0400
Date:   Mon, 25 Oct 2021 17:45:14 -0400
From:   Alyssa Rosenzweig <alyssa@rosenzweig.io>
To:     Marc Zyngier <maz@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Kettenis <kettenis@openbsd.org>,
        Sven Peter <sven@svenpeter.dev>,
        Hector Martin <marcan@marcan.st>, kernel-team@android.com
Subject: Re: [PATCH 5/5] arm64: dts: apple: j274: Expose PCI node for the
 Ethernet MAC address
Message-ID: <YXclavl/J96V65x8@sunset>
References: <20211025211018.744363-1-maz@kernel.org>
 <20211025211018.744363-6-maz@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211025211018.744363-6-maz@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

If this series is respun for a v2, maybe squash in
https://github.com/mu-one/linux/commit/37df7aa882115ef4598a76ebf1cf234537291c45
as well? If it's merged as-is (and I hope it is!), no need, it can come
when we tackle wi-fi upstream.
