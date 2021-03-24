Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 014633477E3
	for <lists+devicetree@lfdr.de>; Wed, 24 Mar 2021 13:09:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232756AbhCXMIa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Mar 2021 08:08:30 -0400
Received: from muru.com ([72.249.23.125]:46532 "EHLO muru.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232160AbhCXMIF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 24 Mar 2021 08:08:05 -0400
Received: from atomide.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 843318117;
        Wed, 24 Mar 2021 12:09:01 +0000 (UTC)
Date:   Wed, 24 Mar 2021 14:08:01 +0200
From:   Tony Lindgren <tony@atomide.com>
To:     Dario Binacchi <dariobin@libero.it>
Cc:     linux-kernel@vger.kernel.org,
        =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-omap@vger.kernel.org
Subject: Re: [RESEND PATCH] ARM: dts: am33xx-l4: fix tscadc@0 node indentation
Message-ID: <YFsroQ0lDR41CRN3@atomide.com>
References: <20210314151629.23921-1-dariobin@libero.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210314151629.23921-1-dariobin@libero.it>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Dario Binacchi <dariobin@libero.it> [210314 17:17]:
> Fix the broken indentation of tscadc@0 node.

Applying into omap-for-v5.13/dt thanks.

Tony
