Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3049D4A21E
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 15:29:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726248AbfFRN3Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 09:29:24 -0400
Received: from mail.kernel.org ([198.145.29.99]:46088 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725919AbfFRN3Y (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jun 2019 09:29:24 -0400
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id B4E3A2085A;
        Tue, 18 Jun 2019 13:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1560864563;
        bh=EUY20L1oreGPJG/z6mb+pYwDrxgzqNc1eCeVk7HRMTc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=J232LUing57SfpflQ5JzHWMkhyF0JJ5GG6Dq2yla51GFv4Xrmhktx6wss7eZrtmI9
         JUkjQaq3RfuCML0WWHquv+VuVQakteNCBtSyFSGp1MJ6h4v1ZDkU3vo85rjprEu1oC
         DH0/58w2J0cPxFHKZmsde1Ft/YQ3PG6aVpr7AD/M=
Date:   Tue, 18 Jun 2019 21:28:33 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Jan Tuerk <jan.tuerk@emtrion.com>
Subject: Re: [PATCH] dt-bindings: arm: Move Emtrion i.MX6 board bindings to
 schema
Message-ID: <20190618132830.GH1959@dragon>
References: <20190617204423.2880-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190617204423.2880-1-robh@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 17, 2019 at 02:44:23PM -0600, Rob Herring wrote:
> The Emtrion board bindings landed when the i.MX board/SoC bindings were
> being converted to DT schema. Add them to the schema and remove the
> separate file.
> 
> Cc: Jan Tuerk <jan.tuerk@emtrion.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Applied, thanks.
