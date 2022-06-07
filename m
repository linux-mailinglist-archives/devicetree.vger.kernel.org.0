Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 864B75423F5
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:51:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232866AbiFHArg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 20:47:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1574449AbiFGXZo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 19:25:44 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B00D37A3D1
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 14:36:18 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id s14so15915038plk.8
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 14:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+tlXHJz9kisGrwJfIL/WMzkc1MTPDPH2NkDRgofMQXA=;
        b=CAQl78ghMWdgJpqs5v1tnPv/lepLaq6E6vHOQGSNFpzq0er9j5lbI4PgArppRnxI1i
         OhUHFhwQFCvy16F1fowJJ0nOReoDaAayxdilL8hHuOdrtYQOZkulXHx7HI4Tqfp0C+OG
         Vq9dE/RfMBMoIXhW6yIroAQ9UKNnH2hPxxa8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+tlXHJz9kisGrwJfIL/WMzkc1MTPDPH2NkDRgofMQXA=;
        b=e7XFVTixiPe3HJkbai93zMgLp1+jBr85KKRh1ncMUSGGZZQ9O+zffl3izb6+2hswm0
         XIQrpdI1w6jZGwEBFBC6+84XwMoa21QVfa2TeO8REw+o81NkSEjvV24Faisp51/n8amY
         h+2kg6pi3xRELUjEEgLbS0M007CC7iaXvnO3SIgVy4Ht+G1GjgVFVDuO6AiQP2DPAztB
         sCD30wXD1Jug9ekDB+tNcImM/wQ00CHlPbRpEg7TSJJsZA6+x/dK7TCDrZikmJrJSSNa
         G7liUovLTe8RvT5G3Y2Rj3Sm7k049PSkSf+J2WNkj9WZ3xXriiS7yvV1vB2FXNM4iMd0
         9EWw==
X-Gm-Message-State: AOAM530Tb2TS8FZ+urqDCM3CwehZURQtMj5Pr5VxxbzwCepxo3z2+PzW
        J9dcj6YYdsgsqId+Ijt17baiiK0S295r0g==
X-Google-Smtp-Source: ABdhPJwOhl2xigdWsk9Ip1jYWJh9CMdZiN68xBIN0cOrLS7fUs1z4TCbxFVDM92Dxke6O0smj4+FAA==
X-Received: by 2002:a17:902:9b8a:b0:163:d0ad:f9e8 with SMTP id y10-20020a1709029b8a00b00163d0adf9e8mr30304386plp.79.1654637777427;
        Tue, 07 Jun 2022 14:36:17 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:b689:cc5b:e6ad:930e])
        by smtp.gmail.com with ESMTPSA id q21-20020a056a00085500b0051874318772sm5823056pfk.201.2022.06.07.14.36.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:36:16 -0700 (PDT)
Date:   Tue, 7 Jun 2022 14:36:14 -0700
From:   Brian Norris <briannorris@chromium.org>
To:     Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Sebastian Fricke <sebastian.fricke@collabora.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Assign RK3399 VDU clock rate
Message-ID: <Yp/EzreGUkFIvwhG@google.com>
References: <20220607141535.1.Idafe043ffc94756a69426ec68872db0645c5d6e2@changeid>
 <253e2771abb13a3e62c07dfb0b420169bb572c2d.camel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <253e2771abb13a3e62c07dfb0b420169bb572c2d.camel@collabora.com>
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 07, 2022 at 05:20:41PM -0400, Nicolas Dufresne wrote:
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

Thanks!

> My only doubt was if you really needed to duplicate that setting into gru-
> scarlet.dtsi, but I've simply assumed the answer is yes, and that you already
> checked that.

I didn't explicitly test without modifying gru-scarlet.dtsi, but the
unfortunate nature of these long monolithic
assigned-clocks/assigned-clock-rates properties is that if you want to
add or override one element in the array, you have to repeat (or
override) all of them. And because rk3399-gru-scarlet.dtsi already
overrides some of them, every additional change has to be reflected
there.

That's why it would be much nicer to be able to distribute the
assignments to their various consumer nodes, but as noted in the commit
message (because you mentioned it to me out-of-band ;) ), we can't do
that.

Regards,
Brian
