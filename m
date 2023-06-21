Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C20A2738A23
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 17:52:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233668AbjFUPwT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 11:52:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233624AbjFUPwS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 11:52:18 -0400
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFD8CE2
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 08:52:16 -0700 (PDT)
Received: by mail-il1-x134.google.com with SMTP id e9e14a558f8ab-3426e9a9c3eso10204375ab.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 08:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1687362736; x=1689954736;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ag26UyDKkHoxQiyV8O/Ldi7kyB/IB6ncqW08quTitXc=;
        b=fdmRdnAhrslppJ5Z82ML7utsOyR69vz7HyZmzKymg8XXor/GEQSJtUw1A1rHW45p5b
         uBWVAbnacuusd6bEIwqtV01XB6X4ejBISp9nHP113D7ylvyAh5y/ITHwvNLwY632IcMQ
         HjcNIyoKukZKtu8hW65xCl1fFDnv96TQb2pqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687362736; x=1689954736;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ag26UyDKkHoxQiyV8O/Ldi7kyB/IB6ncqW08quTitXc=;
        b=LbjKMSuypX+kyNIhAXaMpif9Z7MH4NtEWxDW9XzFT7OkSkj+wVokCPWiwO7xxrvjWc
         I/f1qiObFS4UNoWn/nTqZTR8Raa8vkWx2ixEBzR/GHFyvMMGDBokXsUn6xi7qYPxft8l
         5FiAkN3S/HGo7DDYM791SiqZm2Qlht/9RUmnm1GrmgSCReplxXwVdrBesIGN10Is97Te
         xF8YY2ZCCCTSM90dwiv+ZUX1W+R4ts6mzqmY0R4DmEJh/3cB1E1r0o2+uXAsrs+Tm0oo
         pnNPD7sZv/gD6pspi/Gggs3iv9YygXm9YlIpNc01bVpUjpgR2lu9+Kta2H/L6a2WGNWV
         9TYg==
X-Gm-Message-State: AC+VfDzRh5M5x2WlXV6olKonuq1UzEmYAN9uXNEBFE6IIDEU9JcPvzt+
        0C6u8i1XpVP1R3AbJHVo7jSu3Q==
X-Google-Smtp-Source: ACHHUZ4e2yjbNJGAZVtzu0Zc1nOkU+tFiE5bwvkTTjEvRBjqhxm1wIGJlaqe3zNlVxolUXe/Gyt+0g==
X-Received: by 2002:a92:c081:0:b0:334:de38:d600 with SMTP id h1-20020a92c081000000b00334de38d600mr10877938ile.3.1687362736246;
        Wed, 21 Jun 2023 08:52:16 -0700 (PDT)
Received: from localhost (30.23.70.34.bc.googleusercontent.com. [34.70.23.30])
        by smtp.gmail.com with UTF8SMTPSA id u2-20020a056e02080200b00342093347d8sm1392332ilm.76.2023.06.21.08.52.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 08:52:15 -0700 (PDT)
Date:   Wed, 21 Jun 2023 15:52:15 +0000
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Benjamin Bara <bbara93@gmail.com>
Cc:     benjamin.bara@skidata.com, conor+dt@kernel.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
        krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH v2 1/3] usb: misc: onboard-hub: support multiple power
 supplies
Message-ID: <ZJMcrwcwx5HVC/DL@google.com>
References: <ZJMPv6Fm3On0ITFi@google.com>
 <20230621154505.2229794-1-bbara93@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230621154505.2229794-1-bbara93@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 21, 2023 at 05:45:05PM +0200, Benjamin Bara wrote:
> Hi,
> 
> thanks for the feedback!
> 
> On Wed, 21 Jun 2023 at 16:57, Matthias Kaehlcke <mka@chromium.org> wrote:
> > On Wed, Jun 21, 2023 at 04:26:27PM +0200, Benjamin Bara wrote:
> > > +     hub->supplies_num = 1;
> > > +     if (hub->pdata->supplies_num > 1)
> > > +             hub->supplies_num = hub->pdata->supplies_num;
> >
> > Please change the above to:
> >
> >         if (hub->pdata->supplies_num != 0)
> >                 hub->supplies_num = hub->pdata->supplies_num;
> >         else
> >                 hub->supplies_num = 1;
> >
> 
> I would even prefer:
> if (hub->pdata->supplies_num)
> 
> if it's fine for you?

Sounds good to me :)
