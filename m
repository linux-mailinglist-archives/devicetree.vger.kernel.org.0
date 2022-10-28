Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46B9E610BB3
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 09:56:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229482AbiJ1H4m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 03:56:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229691AbiJ1H4l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 03:56:41 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D4351C2E82
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 00:56:40 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id bs21so5901822wrb.4
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 00:56:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=qlSi8PH3eVeYd3bX9Ru0Pui06IajHpzfRcMdACEVQ8A=;
        b=gsq80RuFrk+xdyjHYrHlXn+MFPYfTkRIH6hTt9rPAcQypDp+mR1lZ+B09Ei+JVobqI
         CzjGNLquWCFM6D6NKYtfMW/q7zukGKyaZWkmvzpHjzdYMy3wLn2p+y93RKqeSIpdCG7k
         7a1/Pq0RMD12qQIBOjnL6kPPswn4MiUlYXxBJ92tr1b6uQHpAjzkobkbrl63JCmPjXF0
         ALjiGqbLb77qH1xjLz9HS+jj5QLhf+fFaA8mSOATKotwCIIAKMQTJpS6a92sizyCAZjr
         Lx73WNGh4NUM3jRg2EbMZ6CqKzsVpHMfOcbBwzMP3vmP2rZmwsXtCIK3WwAbg09PaJp5
         Dy3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qlSi8PH3eVeYd3bX9Ru0Pui06IajHpzfRcMdACEVQ8A=;
        b=REL3V+LgxeKmdRRAAwvCaN3wMLhBPuK3LTitt7dcpPWFZv5NpAJDJsSywPeDYHhHoo
         rpAkHCimYKqrOaD2Oky4yN0Y9YicnAxMvxiK+PE1I9neYrKIO1W7u6/uvlPxOWbngmKm
         f7pEqEfeuBNg2J0dtEqz/uhT0zmI77OjDcLU0S+6/ZBaQLWd+Z0HiT2vGVgwnqbCbmPJ
         zq4ddeRgjvewTA46ji63dVC1ozTJGEHLCMrVFCGMPJ5cl2iD5NkDe7bbVtCku9+1b58o
         mhgjWyZCRo6BYbmM+wje9ZOz+rneCCfnYLUb8RwPHInWoGo0W/2e4mH/UBXR8iefypGK
         i4oQ==
X-Gm-Message-State: ACrzQf14Zz+Q9xXSMEBw0cLc5eLiwXsMF50H5F+nqgVEWoHGm1BOMdMv
        2KhBRwfLaDBJIRzKxnOruAVt6Q==
X-Google-Smtp-Source: AMsMyM6AoDUdwOvmMCKifPvi+YQKGqXFkn7HNJguNAI3aN8Lviu6GyuDycuD5fjuPprP6Jd+yTI6ow==
X-Received: by 2002:a05:6000:3cf:b0:231:6ed6:e978 with SMTP id b15-20020a05600003cf00b002316ed6e978mr33607533wrg.500.1666943798821;
        Fri, 28 Oct 2022 00:56:38 -0700 (PDT)
Received: from localhost ([2a01:cb19:85e6:1900:98b2:dc79:fe90:6dad])
        by smtp.gmail.com with ESMTPSA id f13-20020adff8cd000000b00228692033dcsm3011649wrq.91.2022.10.28.00.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 00:56:38 -0700 (PDT)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
To:     Jeff LaBundy <jeff@labundy.com>, dmitry.torokhov@gmail.com,
        robh+dt@kernel.org
Cc:     linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        jeff@labundy.com
Subject: Re: [PATCH v3 0/7] Additional fixes for Azoteq IQS7222A/B/C
In-Reply-To: <Y1SQ2t6yUvdaIQPG@nixie71>
References: <Y1SQ2t6yUvdaIQPG@nixie71>
Date:   Fri, 28 Oct 2022 09:56:37 +0200
Message-ID: <87pmectm8a.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On sam., oct. 22, 2022 at 19:54, Jeff LaBundy <jeff@labundy.com> wrote:

> This series comprises a second round of fixes that result from
> continued testing and updated guidance from the vendor.
>
> Jeff LaBundy (7):
>   Input: iqs7222 - drop unused device node references
>   dt-bindings: input: iqs7222: Reduce 'linux,code' to optional
>   Input: iqs7222 - report malformed properties
>   dt-bindings: input: iqs7222: Correct minimum slider size
>   Input: iqs7222 - protect against undefined slider size
>   dt-bindings: input: iqs7222: Add support for IQS7222A v1.13+
>   Input: iqs7222 - add support for IQS7222A v1.13+
>
>  .../bindings/input/azoteq,iqs7222.yaml        |  25 +-
>  drivers/input/misc/iqs7222.c                  | 504 +++++++++++-------
>  2 files changed, 311 insertions(+), 218 deletions(-)

Not sure this requires a re-send, but the series seems ill-formatted.
all patches are posted separately to the list instead of replying to the
cover letter. Is that expected?

>
> -- 
> 2.34.1
