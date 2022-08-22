Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E19F59CA6A
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 22:55:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232105AbiHVUzs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 16:55:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230383AbiHVUzr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 16:55:47 -0400
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75C7A4DF23
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 13:55:46 -0700 (PDT)
Received: by mail-oi1-f182.google.com with SMTP id s199so13697395oie.3
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 13:55:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=mjJG/0Vf5+D1Ka8r3FFJfuUPSO+l90r7LdLD6KT1a8Y=;
        b=E52dfI71B+NBVY2zN4fQTeE6yNWhE6hGvyuDN7Km3CkLy89erQmYUuyeMOWu56/LiD
         12ry3JbS+Ea4onLoPMv6zO4yt7EeJCvG0UtatnxAWQHMdiXLwVdaMUiJtvvevsY45tyQ
         gJMgTOC7fDndUET5LMVzaJx5fPDSULH7TrsIwNI+JlqsVUkMk6+3ODpMpjU//0bY8hHd
         7/+0w+9gNyZrmdjEUhCtz8FTGTRoXQRxipnj2Rdm2a3bGYHeeQYjOB16Eueme89XTLCI
         H75ugwmROpXRgO3HZbMTkByh/3GoO/su4B2lc122hfvUyV8CG10eWkkMNlFcd0cmjNVQ
         nRpw==
X-Gm-Message-State: ACgBeo3ooUamjRZmEMVYBGCfQZ/YM+Ukqu6ErOzJ+4JkmKxzMz37DLP0
        jKdik4/qnWa6qHPIO9UMaQ==
X-Google-Smtp-Source: AA6agR5lILd2YpB2mYg11t0CLW3ccbP3NXtzHEuyw1FaJws0Pd9nrOFQlpUm/k6hRyPt+hNhk6WH+Q==
X-Received: by 2002:a05:6808:10ce:b0:344:e898:3584 with SMTP id s14-20020a05680810ce00b00344e8983584mr76178ois.36.1661201745575;
        Mon, 22 Aug 2022 13:55:45 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o17-20020a056870969100b0010d75440f41sm294176oaq.45.2022.08.22.13.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 13:55:45 -0700 (PDT)
Received: (nullmailer pid 820334 invoked by uid 1000);
        Mon, 22 Aug 2022 20:55:44 -0000
Date:   Mon, 22 Aug 2022 15:55:44 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
Subject: Re: [PATCH 01/11] DT: RTC: orion-rtc: Convert to YAML
Message-ID: <20220822205544.GB808626-robh@kernel.org>
References: <20220820194804.3352415-1-andrew@lunn.ch>
 <20220820194804.3352415-2-andrew@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220820194804.3352415-2-andrew@lunn.ch>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 20, 2022 at 09:47:54PM +0200, Andrew Lunn wrote:
> Covert the text description to YAML. The clock is optional, Orion5x

Convert

> based boards don't have it, but kirkwood should.

Please use get_maintainers.pl. RTC maintainers were copied nor linux-rtc 
and they should apply this. arm-soc (soc@kernel.org now BTW) shouldn't 
really be Cc'ed either unless they are supposed to apply these.

Rob
