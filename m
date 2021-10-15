Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 395D142F67A
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 17:00:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240684AbhJOPDD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 11:03:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240660AbhJOPDD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Oct 2021 11:03:03 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [IPv6:2a03:6000:1011::59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 93FCAC061764
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 08:00:56 -0700 (PDT)
Received: from [192.168.178.106] (p57bc9963.dip0.t-ipconnect.de [87.188.153.99])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 8A25148E465;
        Fri, 15 Oct 2021 15:00:55 +0000 (UTC)
Message-ID: <68ec9712-5f3d-c572-99ee-2cbcaa84a6d7@zonque.org>
Date:   Fri, 15 Oct 2021 17:00:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Subject: Re: [PATCH v8 0/2] gpu: drm: add driver for ili9361 panel
Content-Language: en-US
To:     airlied@linux.ie, daniel@ffwll.ch
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
References: <20211015145910.1020068-1-daniel@zonque.org>
From:   Daniel Mack <daniel@zonque.org>
In-Reply-To: <20211015145910.1020068-1-daniel@zonque.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/15/21 16:59, Daniel Mack wrote:
> This is v3 of the series.

Ups, sorry. Ignore this one. I meant to resend a different version of
this series.


My apologies,
Daniel



> 
> Changelog:
> 
> v2 -> v3:
> 	* Turn Documentation into yaml format
> 
> v3 -> v4:
> 	* Fix reference error in yaml file
> 
> v4 -> v5:
> 	* More yaml file documentation fixes
> 
> v5 -> v6:
> 	* More yaml file documentation fixes
> 
> v6 -> v7:
> 	* Fix ordering of patches
> 
> v7 -> v8:
> 	* More yaml file documentation fixes
> 
> Daniel Mack (2):
>   dt-bindings: display: add bindings for newhaven,1.8-128160EF
>   drm/tiny: add driver for newhaven,1.8-128160EF
> 
>  .../display/panel/ilitek,ili9163.yaml         | 69 +++++++++++++++++++
>  drivers/gpu/drm/tiny/Kconfig                  |  13 +
>  drivers/gpu/drm/tiny/Makefile                 |   1 +
>  drivers/gpu/drm/tiny/ili9163.c                | 224 ++++++++++++++++++
>  4 files changed, 307 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/ilitek,ili9163.yaml
>  create mode 100644 drivers/gpu/drm/tiny/ili9163.c
> 

