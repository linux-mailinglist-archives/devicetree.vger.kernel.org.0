Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96AB75B879A
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 13:54:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229531AbiINLyG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 07:54:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229809AbiINLyF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 07:54:05 -0400
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C8947CB63
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 04:54:04 -0700 (PDT)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-1274ec87ad5so40317169fac.0
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 04:54:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=+ByLpxeC4c6v+n1+RocXDgPBcD3Sp7DzptktP1I0ZSk=;
        b=KzQRUmY0gwQu5+mIHLTuL5hPMWpKU+8W0+bJlmaNT/HvJLUI0o863PmLWyjKuvhmiW
         5eAVgrpY1yyvB5e9G0kTWiJCYYOrEw9A8+aPeb4Yx0wyGgaQDs7/ej93RxmSwsISG0jJ
         yHDEkG35EwrjW4iAyoEIhAmhgL/AS4T+t20FreuljhdwZ+JMjludYzkH3bFOmqAuF/pC
         l4GokB0X0uJ+Zzp/5ZqXWoPphFuZcdPp7KBZnf5aFZQhnYnI1UMH1ShmDuVsW/YcnxQa
         vuq+A7cQ9C44M3iIwCMSpR79rJn+RF0mDF+E/ava6Gtf55gkKWPVAIOVwjGu5AL4yYrc
         Fxqg==
X-Gm-Message-State: ACgBeo1Epw32BYgWbiG+g8wPpNaHK4wsKNlKWdfpSaBjEHY5RBqHgMub
        4oHnitIzHDB4H2/v9Z+Iqw==
X-Google-Smtp-Source: AA6agR6jQr1ZMShO6ffw0Kcm7VMDiDMUe8P9JExeD8OBfdHQrReYRyzJURAdVPXFbS2fiEy8Tp+ryg==
X-Received: by 2002:a05:6870:3041:b0:127:32b2:70a8 with SMTP id u1-20020a056870304100b0012732b270a8mr2163513oau.122.1663156443490;
        Wed, 14 Sep 2022 04:54:03 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id ay8-20020a056808300800b0034d8abf42f1sm6359474oib.23.2022.09.14.04.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 04:54:03 -0700 (PDT)
Received: (nullmailer pid 1832345 invoked by uid 1000);
        Wed, 14 Sep 2022 11:54:02 -0000
Date:   Wed, 14 Sep 2022 06:54:02 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     kernel@pengutronix.de, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add prefix for
 InnoComm
Message-ID: <20220914115402.GA1832312-robh@kernel.org>
References: <20220913103337.1849023-1-s.hauer@pengutronix.de>
 <20220913103337.1849023-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220913103337.1849023-2-s.hauer@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 13 Sep 2022 12:33:35 +0200, Sascha Hauer wrote:
> This adds a vendor prefix for InnoComm Mobile Technology Corp.,
> see https://www.innocomm.com/.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v1:
>     - Fix spelling of InnoComm
> 
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
