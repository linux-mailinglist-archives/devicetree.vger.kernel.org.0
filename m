Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D59B561E6D
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 16:52:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235612AbiF3Ovy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 10:51:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235425AbiF3Ovw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 10:51:52 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A4261D0D3
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 07:51:51 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id q9so27692410wrd.8
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 07:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=9Vy0Q0yOTMgozrHr/k/yV5yONhH9Zbt0a1EaEatVf+M=;
        b=r4J30h3bEqLpGViZoCt3O4Hu1A5Wj8yEoXJyszGfn/2GIs+kmRDBHulPLdUyC4Ipgf
         511lhEjeX6IjV6aAfF4VgBZrNrJgHftDLZbVV7kyp+6VJtKdZ/CQfMINKKgXtPTKNGZt
         5L2uSoPR4Ll1ZcvuB0Pp5zfWhANJGiUi77pZuSpTenN24NJaiedqX+Ma26654YC4zDcg
         +hbWPRjgQObK+W99vRfGDLVj3QX/o1hqIR+2AYQhIKXLEOV2e98MCtRtla8lQgWG9uDV
         BCYikfSKz9/5Et7f0xcWox2UNv/tFKLx+pSXweXdeRvtvKiRMe0thmxCDXTmS1TYJ6OK
         Pvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=9Vy0Q0yOTMgozrHr/k/yV5yONhH9Zbt0a1EaEatVf+M=;
        b=540zQozOzT/1dTYaWIzteyUfUQq/RMxxiE7uTCDKb6tw7hR/FskxAmhNUtvPIIBYnw
         SfcCJh7h6JqxXhvQeLS6Bcwb1MnfLtTAV9kV+S6Dbdds4mqAjuEJ7tnXHmXnBQIGGhXG
         YDiBD3F7uJEaV6r5FJAig3YZjYhUTln24t2O4Rp0moKdXGYIL09FuamU8BtiKZpl37na
         TK/7EKtXlYcKPRYRhYHpUXgEtpUIFD2O1QVrjk8dcyVcIZMlBI5BSAKnNjzpyaqt8im2
         UpS3TtJ9SZkc68uR3mGNj46xGXVA75ER2b45bhm+EptQM0JarnCZ0w8E3ANaqwsiyGAf
         DuOw==
X-Gm-Message-State: AJIora8zYnWj6oXRIbE27d55uVfZkpsXx2bL9bCiEVws246KT6K6KXH5
        ZvM56HrvC4FDmt6JTCpe3YgpHA==
X-Google-Smtp-Source: AGRyM1sZE6o0QXRdpPatXcWMIkBfS5RwTO5A1CXqWo9NWMsluuItsc+JQISfOGpvtoQ5/vBZ9B/ppA==
X-Received: by 2002:a5d:47a1:0:b0:21d:1723:94f3 with SMTP id 1-20020a5d47a1000000b0021d172394f3mr8540807wrb.580.1656600710016;
        Thu, 30 Jun 2022 07:51:50 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id r16-20020a05600c35d000b003a0375c4f73sm7209219wmq.44.2022.06.30.07.51.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 07:51:49 -0700 (PDT)
Date:   Thu, 30 Jun 2022 16:51:47 +0200
From:   LABBE Corentin <clabbe@baylibre.com>
To:     John Keeping <john@metanate.com>
Cc:     heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 14/33] crypto: rockchip: handle reset also in PM
Message-ID: <Yr24g3LoO5uFuCux@Red>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
 <20220508185957.3629088-15-clabbe@baylibre.com>
 <YrBUODGF51oUsF1f@donbot>
 <YrF74tmA9qc+I3JF@Red>
 <YrHJn6Pl5B/1pj9L@donbot>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YrHJn6Pl5B/1pj9L@donbot>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Tue, Jun 21, 2022 at 02:37:35PM +0100, John Keeping a écrit :
> On Tue, Jun 21, 2022 at 10:05:54AM +0200, LABBE Corentin wrote:
> > Le Mon, Jun 20, 2022 at 12:04:24PM +0100, John Keeping a écrit :
> > > On Sun, May 08, 2022 at 06:59:38PM +0000, Corentin Labbe wrote:
> > > > reset could be handled by PM functions.
> > > 
> > > Is there any further rationale for this?
> > > 
> > > After this change there is no longer a guaranteed reset pulse on probe
> > > since the reset control may already be de-asserted.  This is normally
> > > the most important case for a reset as it's the only time when the state
> > > of the hardware is unknown.
> > > 
> > > The original use of devm_add_action_or_reset() seems a bit weird already
> > > since there doesn't seem to be any need to assert reset when the driver
> > > is unloaded.
> > > 
> > 
> > I am not an hw engineer, so my knowledge on reset is low.
> > So why not having a reset pulse on probe is a problem ?
> 
> The point of the reset is to bring the hardware back to a known state.
> Since we don't know what state the hardware will be in following the
> bootloader or previous OS, I think the reset in probe is the only place
> that it is important.
> 
> If this patch isn't fixing anything, I suggest just dropping it.

Thanks for the explanation, I will re-add the reset at probe.

