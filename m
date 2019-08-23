Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 645F39AC98
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 12:10:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394132AbfHWKJw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 06:09:52 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:57421 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392376AbfHWKJw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 06:09:52 -0400
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1i16Vx-00058k-20; Fri, 23 Aug 2019 12:09:49 +0200
Message-ID: <1566554987.3023.8.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/2] reset: Reset controller driver for Intel LGM SoC
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Dilip Kota <eswara.kota@linux.intel.com>, robh@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     cheol.yong.kim@intel.com, chuanhua.lei@linux.intel.com,
        qi-ming.wu@intel.com
Date:   Fri, 23 Aug 2019 12:09:47 +0200
In-Reply-To: <15c538d7-1045-1a8c-4c8b-194a1de17a16@linux.intel.com>
References: <42039170811f798b8edc66bf85166aefe7dbc903.1566531960.git.eswara.kota@linux.intel.com>
         <90cc600d6f7ded68f5a618b626bd9cffa5edf5c3.1566531960.git.eswara.kota@linux.intel.com>
         <1566549822.3023.2.camel@pengutronix.de>
         <15c538d7-1045-1a8c-4c8b-194a1de17a16@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 2019-08-23 at 17:47 +0800, Dilip Kota wrote:
[...]
> Thanks for pointing it out.
> Reset is not supported on LGM platform.
> I will update the reset_device() definition to "return -EOPNOTSUPP"

In that case you can just drop intel_reset_device() completely,
the core checks whether ops->reset is set before trying to call it.

regards
Philipp
