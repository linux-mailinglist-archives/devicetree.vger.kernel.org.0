Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 06C114A281
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 15:40:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728881AbfFRNkj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 09:40:39 -0400
Received: from mail.kernel.org ([198.145.29.99]:56598 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728572AbfFRNkj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jun 2019 09:40:39 -0400
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 232B920823;
        Tue, 18 Jun 2019 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1560865238;
        bh=TNcZttMiJiW3N92oHPvoksZuYuZdQPL9GJysjflSzqk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DQEWWNu3AuCggewd66xD7PLYu/7ezSmUQk4djDA5VfHjYRsKAtaBBO4S3lqs6p7YK
         NmXfEdV5/pu8TGT/j6w5CIRPRRlzK+woGJNaRj/jd4YsWjguShI6Y/x3ku1ApERvQ7
         +PtGIRE+h0mySVwE7F5Of1T0CBHZdFMNURHJGZl4=
Date:   Tue, 18 Jun 2019 21:39:40 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: arm: fsl: Add missing schemas for
 i.MX1/31/35
Message-ID: <20190618133938.GJ1959@dragon>
References: <20190617224244.30818-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190617224244.30818-1-robh@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 17, 2019 at 04:42:44PM -0600, Rob Herring wrote:
> The SoC/board bindings for i.MX1/31/35 are undocumented. Add the missing
> bindings to the schema.
> 
> Cc: Shawn Guo <shawnguo@kernel.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Applied, thanks.
