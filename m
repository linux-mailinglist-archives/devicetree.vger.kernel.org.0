Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1B76397020
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 11:16:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233096AbhFAJRx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 05:17:53 -0400
Received: from mail-40140.protonmail.ch ([185.70.40.140]:38664 "EHLO
        mail-40140.protonmail.ch" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233218AbhFAJRx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 05:17:53 -0400
Date:   Tue, 01 Jun 2021 09:16:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
        s=protonmail; t=1622538970;
        bh=zEBoQZuXbcl3vg0AJIfdTRqG2/JwXZI7r5xWwCgFELM=;
        h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
        b=aj8sw0MJvu7B7j34QaU2xex28JPvliA57kkKQuZ0mp38/shxMqPZj1oLtKjBdpsFx
         5pqBSKkhgIV4doqk8drQHzY8EBZ4/nTozFeSSqBxouKHkgXW3n95kwORJodqSXL4dU
         mb+VEmWv7ageYdxf9jzPDW+IZiz38Z3KA4ya1lhs=
To:     "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
From:   Yassine Oudjana <y.oudjana@protonmail.com>
Cc:     Yassine Oudjana <y.oudjana@protonmail.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "phone-devel@vger.kernel.org" <phone-devel@vger.kernel.org>,
        "~postmarketos/upstreaming@lists.sr.ht" 
        <~postmarketos/upstreaming@lists.sr.ht>
Reply-To: Yassine Oudjana <y.oudjana@protonmail.com>
Subject: Re: [PATCH 1/2] Input: cypress-sf - Add Cypress StreetFighter touchkey driver
Message-ID: <bj_bmlxlyRbM5zdpsUEqvPyby_NWhFH95Y9wn9b7EIpvi2N48e6x6dBFY9EpyS4mxJhuRRJeC4ReVM3YMawD44RBZDHdSKftdbV6E8AMuoo=@protonmail.com>
In-Reply-To: <ocb1SNCqWH2dOajA4VYTx5jo9jZ67pS6FTejJN82OnPIUdmqBXL62kjGDQ-ZIMPnmhm3C16FCJz94cs82kGFmFBq7mERwqtHhwr7BgZC_w0=@protonmail.com>
References: <ocb1SNCqWH2dOajA4VYTx5jo9jZ67pS6FTejJN82OnPIUdmqBXL62kjGDQ-ZIMPnmhm3C16FCJz94cs82kGFmFBq7mERwqtHhwr7BgZC_w0=@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
        autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
        mailout.protonmail.ch
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Any comments on this patch?

Yassine
