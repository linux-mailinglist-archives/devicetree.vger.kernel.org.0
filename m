Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBA796B164F
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 00:13:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229751AbjCHXNo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 18:13:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229913AbjCHXNn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 18:13:43 -0500
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5559F5FEA9
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 15:13:42 -0800 (PST)
Received: by mail-oi1-f178.google.com with SMTP id e21so351039oie.1
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 15:13:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678317221;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3HpZvxMk2YokTAq/4Ev/qK5BYRqp28aqTV6UV3YI9f4=;
        b=kGJT/ZPV3HJ3N7EeUdiwCOOVP7OqQyT49YgxFKXsKdq/XBcjfabtUvC2PUXu4z2R6L
         t9W7TfYmOHh8Ghxv+daf/gGjzsU0b4n+nANxlAAnc9j4msEgrr8AHjIgWE2N/6Fl9XRW
         oSP7uJQkhkJUF6hqRZL2s0sxM2J6qLjezCxQDrZ8Wja+3IXGtkVs02ZF7OHWCdiC1TAf
         uhum+QMjmuRMUMpwL0e8yWoUIgoqIh/fZaC8XY8jncmP4iReqDaOfbU99y2x2aqkj9O8
         pQvlLK3FWJNok2+bLYHBwLRDYruuEIifgAq6VJMB+Dofwe1jhIQAPMCPLujiJk8vE64h
         FJzw==
X-Gm-Message-State: AO0yUKUaMkg/8LGPP4cyN47kRyyallge9RFBA2xo0nM3/Cjbz/zq9nW6
        kZWT/BIC3HQMFeBcGf2bXw==
X-Google-Smtp-Source: AK7set8b2D1YLCy3e1RTtVN4xpQSTyVLvpDRN41PdfKm+V4egl1xAulEqupaiSw7n3qZIfTGfXd8yA==
X-Received: by 2002:aca:130f:0:b0:37f:79ad:12a1 with SMTP id e15-20020aca130f000000b0037f79ad12a1mr8481035oii.16.1678317221583;
        Wed, 08 Mar 2023 15:13:41 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 5-20020aca1005000000b00383efcce195sm6813431oiq.8.2023.03.08.15.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 15:13:41 -0800 (PST)
Received: (nullmailer pid 4052051 invoked by uid 1000);
        Wed, 08 Mar 2023 23:13:40 -0000
Date:   Wed, 8 Mar 2023 17:13:40 -0600
From:   Rob Herring <robh@kernel.org>
To:     Parth Gajjar <parth.gajjar@amd.com>
Cc:     heiko@sntech.de, vishal.sagar@amd.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        varunkumar.allagadapa@amd.com, mripard@kernel.org,
        git-dev@xilinx.com, michal.simek@amd.com
Subject: Re: [RESENT PATCH 2/2] dt-bindings: gpu: mali-utgard: Add
 xlnx,zynqmp-mali compatible
Message-ID: <167831722001.4052013.4546734355705365636.robh@kernel.org>
References: <1678181001-2327-1-git-send-email-parth.gajjar@amd.com>
 <1678181001-2327-3-git-send-email-parth.gajjar@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1678181001-2327-3-git-send-email-parth.gajjar@amd.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Tue, 07 Mar 2023 01:23:21 -0800, Parth Gajjar wrote:
> Xilinx zynqmp SoC contains Mali400, so add its specific compatible to
> bindings.
> 
> Signed-off-by: Parth Gajjar <parth.gajjar@amd.com>
> Signed-off-by: Vishal Sagar <vishal.sagar@amd.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

