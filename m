Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29C72284C3B
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 15:07:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725942AbgJFNHw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 09:07:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725902AbgJFNHw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 09:07:52 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64A82C061755
        for <devicetree@vger.kernel.org>; Tue,  6 Oct 2020 06:07:52 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 236CE29B1CB
Date:   Tue, 6 Oct 2020 15:07:45 +0200
From:   Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Guenter Roeck <groeck@google.com>
Cc:     Rob Herring <robh@kernel.org>,
        Collabora Kernel ML <kernel@collabora.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Simon Glass <sjg@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" 
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 3/3] dt-bindings: mfd: google,cros-ec: add missing
 properties
Message-ID: <20201006130745.iain7djjlrnpynbs@rcn-XPS-13-9360>
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
 <20201005071403.17450-4-ricardo.canuelo@collabora.com>
 <CAL_JsqJ5E6LSis1LzgEGPN6aEktkFamRn19v0s-x_OZ+8yMTiA@mail.gmail.com>
 <20201006061317.rs63e3dh4grxij2v@rcn-XPS-13-9360>
 <CABXOdTcN5e-KFvAZ4ZwVF8tvFv1quB7JNZ-JOnzEBXdr1UmOnQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CABXOdTcN5e-KFvAZ4ZwVF8tvFv1quB7JNZ-JOnzEBXdr1UmOnQ@mail.gmail.com>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On mar 06-10-2020 04:28:36, Guenter Roeck wrote:
> It seems like I am missing something. In the mainline kernel:
> 
> sound/soc/codecs/cros_ec_codec.c:       { .compatible =
> "google,cros-ec-codec" },
> 
> Can you explain what you mean with "can't find a driver managing
> google,cros-ec-codec yet" ?

You're right, I should grep the entire code base instead of the drivers
subdir next time...

Sorry about that and thanks,

Ricardo
