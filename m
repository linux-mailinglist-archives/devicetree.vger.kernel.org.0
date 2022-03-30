Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32F074EBCF9
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 10:52:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244471AbiC3Iyj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 04:54:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244444AbiC3Iyh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 04:54:37 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 477416586
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 01:52:53 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-df02f7e2c9so8968346fac.10
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 01:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xKK8+BP7NtxMv6qMYZH++exm47xoAXQBFDmzLBKFFEk=;
        b=Q/1QqH8fwztO9EvHEkorpaktENhQymoHQzhwzKfgkvf8CAw04OQ3/+/mANcXLhrwfw
         DrHaNXxdbBB5HUea/Fg3Lwauae2/Nqjr8vU7ZE0RqZ3OcE4iV4qZtsl4Jb5Zy1QxohQO
         pfiNmNYa/33X1m0qx52U/9fYqcqrzFVE22TTQ3zZIQoH752l810vWRdjf5eEZDwVWEr9
         93lYgJFoysga5KAupuVq4tgqmUUC7z/wZSce+NxQ3AiI3MNtZwul8m73UTqq4zFd1FL2
         p+/c8X5zgoN0qTROTGUZb0fDrBbSb7Vy7SBi5XHyAJG7tDyjhnQWz73B9KRF+XVYmr0/
         zi6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xKK8+BP7NtxMv6qMYZH++exm47xoAXQBFDmzLBKFFEk=;
        b=jJMDR86Q0RVMdCN+F/wwa/jg519qt84GfaX/SSDNyo7QxwKrbUfPL73zoJvAR7Y/Ws
         utGRi2lg/zS2aE7fyk11J5tSznIwQMq+7shmPjiClRmp8aH7mvnRw//l9xVMs07tEPru
         /qskGN37joPjuWwcWg4XvvEqcegGDh314EhIIkC/bYRcH3I+5AYfJNkC2pZh6Np0rr6w
         R8gfZCRomlm+5/n1BwdYeofdCOv6pNgPPt56uV6Zg7m8PiYXJnop8vM/Ov03f8O/CvvT
         ccA42kjh1ODu2/eCfYC+hdjcsxU66cnPW3ojY50ZYTVwheepLr1FYhrRkf6k5DUFzN5S
         KNuA==
X-Gm-Message-State: AOAM532NDwYDmymq30MUU5VL/gBbM/2I8VS/kkmZKKlKvIUhWOACGxTZ
        +e63dCrvJYfnUwJH2iOZ1bFzSNR/90aFNQn2Sgb39g==
X-Google-Smtp-Source: ABdhPJyoD7mvxWMcFkCd1XozTD5RmNF+aVQJlac3n/hu2/Scsd5osI9K5Mz2gkhtfF4K87i05JGRHOrWlyPQ5hcQy30=
X-Received: by 2002:a05:6870:4789:b0:dd:e6e0:2471 with SMTP id
 c9-20020a056870478900b000dde6e02471mr1617098oaq.195.1648630372658; Wed, 30
 Mar 2022 01:52:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220329024921.2739338-1-andy.chiu@sifive.com>
 <20220329024921.2739338-5-andy.chiu@sifive.com> <20220329155609.674caa9c@kernel.org>
 <YkOxexKUQqmFVe9l@lunn.ch> <20220329184819.6d4354b6@kernel.org>
In-Reply-To: <20220329184819.6d4354b6@kernel.org>
From:   Andy Chiu <andy.chiu@sifive.com>
Date:   Wed, 30 Mar 2022 16:50:35 +0800
Message-ID: <CABgGipWrV_+AKvmJzNAqcwx34pgTt8OLX-gp342-WfDZAaTWmw@mail.gmail.com>
Subject: Re: [PATCH v7 net 4/4] net: axiemac: use a phandle to reference pcs_phy
To:     Jakub Kicinski <kuba@kernel.org>
Cc:     Andrew Lunn <andrew@lunn.ch>, radhey.shyam.pandey@xilinx.com,
        Robert Hancock <robert.hancock@calian.com>,
        michal.simek@xilinx.com, davem@davemloft.net, pabeni@redhat.com,
        robh+dt@kernel.org, linux@armlinux.org.uk, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, robh@kernel.org,
        Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

thanks for explaining this,

I will make the change accordingly and post it to net-next when available.

Andy
