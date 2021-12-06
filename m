Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C3F346A2FD
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 18:29:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240032AbhLFRcl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 12:32:41 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:33588 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236532AbhLFRcl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 12:32:41 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 9A20AB811A6
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 17:29:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 271A4C341C2;
        Mon,  6 Dec 2021 17:29:08 +0000 (UTC)
From:   Catalin Marinas <catalin.marinas@arm.com>
To:     Rob Herring <robh@kernel.org>, Will Deacon <will@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: Simplify checking for populated DT
Date:   Mon,  6 Dec 2021 17:29:07 +0000
Message-Id: <163881168906.164288.11558013836253666654.b4-ty@arm.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211029144055.2365814-1-robh@kernel.org>
References: <20211029144055.2365814-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 29 Oct 2021 09:40:55 -0500, Rob Herring wrote:
> Use of the of_scan_flat_dt() function predates libfdt and is discouraged
> as libfdt provides a nicer set of APIs. Rework dt_scan_depth1_nodes to
> use libfdt calls directly, and rename it to dt_is_stub() to reflect
> exactly what it checking.

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64: Simplify checking for populated DT
      https://git.kernel.org/arm64/c/b6363fe7b513

-- 
Catalin

