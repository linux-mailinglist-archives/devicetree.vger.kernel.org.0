Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95ED1701B65
	for <lists+devicetree@lfdr.de>; Sun, 14 May 2023 05:46:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229526AbjENDqJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 23:46:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjENDqI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 23:46:08 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 369B21BC8
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 20:46:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BDF666131F
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 03:46:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 439A2C433EF;
        Sun, 14 May 2023 03:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684035965;
        bh=jcCdyc/opneEnfmB1fLIkTOwQkXcDdVtfT69e1YWQ0k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tAbQG+1YCiqQW/SjsEiF6+qVOheObCoHQRzpIXqIdTm+pDMX/Qhbe/X2hHHFtLejw
         mk423MXnelIzFG9DwomCcgKZXnTAh6hBwqV07fL13GgXGRHVI0yH3fqk0haGwyOdHi
         bmu2Yo414kFVQ4GkxiiqofUQXV30FgIH37eHI+XHALyAq1IXp4vymwhwi+AI7cAgvm
         E9UCnwYl9Iyr3c7lD4OBPyRKaivkudepuk6Hiqkr98/abQSFz78P7RVu29plULA29c
         B8dximItUsVQBNc3UqYyhvA23iSncmSDHOYU/avRz4MYIJSjW7Z7EFetwaoH4Mn65x
         AepdKXnw/+aIw==
Date:   Sun, 14 May 2023 11:45:55 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] ARM: dts: mba6ulx: add missing vcc supplies to i2c
 devices
Message-ID: <20230514034555.GO727834@dragon>
References: <20230421122053.1950640-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230421122053.1950640-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 21, 2023 at 02:20:53PM +0200, Alexander Stein wrote:
> This fixes the warnings:
> pca953x 3-0020: supply vcc not found, using dummy regulator
> pca953x 3-0021: supply vcc not found, using dummy regulator
> pca953x 3-0022: supply vcc not found, using dummy regulator
> at24 3-0051: supply vcc not found, using dummy regulator
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
