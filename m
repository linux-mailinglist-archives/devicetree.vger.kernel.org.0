Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 965F250BF73
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 20:28:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230306AbiDVS2y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 14:28:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232773AbiDVS2K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 14:28:10 -0400
X-Greylist: delayed 180 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 22 Apr 2022 11:25:14 PDT
Received: from mailrelay4-1.pub.mailoutpod1-cph3.one.com (mailrelay4-1.pub.mailoutpod1-cph3.one.com [46.30.210.185])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C52AA2A70A
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 11:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=rsa1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=43yGbpLRS8jsRRS3GIzeflk7R/ljcAqAXPy1IW9Yx8k=;
        b=NLhf28yDiPg9caWdkXyvLoDkhEQslSksaIx12UIajAx92cJcZPhgCtkAYFCeJfcysmfWfDEEBRYnJ
         90iJ/nSw0UCOMXt2jcpt8sP1D2V2sHy5Z5QYUwriqyWso5cnqUMUfvFKucqcJMWXpEx/2DGKmt/tHk
         Ifda3xh6XombEEHF1qJuCjNN9p5dcT0x88DnzSlK9v6bMrKkxDBagGHXtrRCB+9owwWxOjzExcob2J
         9RRfMKfQ8z1knlBu4Te615GgFXkYMD4QTbprEhgwz1snzPtUqH1MtLB0NSDxnZtf8FQDgVXXGnrUz7
         qnQKoG0OF+b8hgaSb5xOnVwNHYmCbiQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=ed1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=43yGbpLRS8jsRRS3GIzeflk7R/ljcAqAXPy1IW9Yx8k=;
        b=bTHPTNeSs2L9lnRJh1yFPQ+KqKe2nuvSUNtk8CRFSpRA4cCRIHl4zbD7hzCszS5RgqzDjn0pTNCs1
         q5FYECkBg==
X-HalOne-Cookie: 3a39bb7a6cb29e5fc279994f315d74b0460e907b
X-HalOne-ID: 46ac5ff7-c268-11ec-8225-d0431ea8bb10
Received: from mailproxy3.cst.dirpod3-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        by mailrelay4.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
        id 46ac5ff7-c268-11ec-8225-d0431ea8bb10;
        Fri, 22 Apr 2022 18:16:06 +0000 (UTC)
Date:   Fri, 22 Apr 2022 20:16:04 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: simple: Add DataImage
 FG040346DSSWBG04 compatible string
Message-ID: <YmLw5LrYYE06M7N4@ravnborg.org>
References: <20220422102242.18959-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220422102242.18959-1-marex@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 22, 2022 at 12:22:41PM +0200, Marek Vasut wrote:
> Add DataImage FG040346DSSWBG04 4.3" 480x272 TFT LCD 24bit DPI panel
> compatible string.
> 
> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
Acked-by: Sam Ravnborg <sam@ravnborg.org>
> ---
> V2: Add AB from Thomas
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 1eb9dd4f8f58..cfe7bb9f89de 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -105,6 +105,8 @@ properties:
>        - chunghwa,claa101wb01
>          # Chunghwa Picture Tubes Ltd. 10.1" WXGA TFT LCD panel
>        - chunghwa,claa101wb03
> +        # DataImage, Inc. 4.3" WQVGA (480x272) TFT LCD panel with 24-bit parallel interface.
> +      - dataimage,fg040346dsswbg04
>          # DataImage, Inc. 7" WVGA (800x480) TFT LCD panel with 24-bit parallel interface.
>        - dataimage,scf0700c48ggu18
>          # DLC Display Co. DLC1010GIG 10.1" WXGA TFT LCD Panel
> -- 
> 2.35.1
