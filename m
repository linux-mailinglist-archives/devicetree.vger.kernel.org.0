Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A4E04D92BD
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 03:50:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233646AbiCOCvP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 22:51:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242228AbiCOCvN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 22:51:13 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 848A447AF2
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 19:50:02 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id mr24-20020a17090b239800b001bf0a375440so1066909pjb.4
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 19:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=sHmx2SIfvpTNEf5cOkY7XOQbRF9DXyn/f/xdXCSOGwA=;
        b=Ql/KB4VSqN5VlGuTdKbqBz8ngizA6TizPArl86l1ZsD6ACZ3PGatVjUFZRUlLkbSFD
         qydk1hIlIdAVN6k+guCjCLUyVQ0+qs0VaJW8lnjcNtxUySke5+DaSyxVf7YqXQy0pnnF
         C6PAPXCl/UwWJD/G5k6hByoJJIiLacKd093D0ylo7v3pfgSJcGbvaT48CT7/rX00BXru
         2Q3qOwTQ+qcmCcnoFo7NKDry2yVhH/i7wFeP4vBE/HnK4MBECuMCqg5aJ527ytAx0v6l
         OChGBmMjYXJnfB7T73ivlZ4oxHrnxN5h2bcUJfXngz6DzIRx23hKF/KQF3GEh5Jm2YCk
         49/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=sHmx2SIfvpTNEf5cOkY7XOQbRF9DXyn/f/xdXCSOGwA=;
        b=NWBBBFQBsHldHRWFyHv7PGIuPgGLXUH4FGWNDdLoL7XaD1Zv3LueCN3V8g9ts+pxVv
         vrBHX2SNaKkPUfWkApPzT9eRXMJqk1PAX05XScsfNrwXj70k42q7YbwiabYirXrIc7sf
         dvgjAxmSmqr453QEQwlzSJ+7BfQs/ZpyAb3BL2w04Be3gtJ1tJQ4gDIyFaKJtY6+6HE5
         E+jN2TMRDuBjJO6jf4PIZTryueyDpk9N3Yi4qTytUNd/VrvPe7MASv+4AmSry5wJFvAB
         lc2CtijJ+sUZfdbyE2cjfY/16xwv6wJMsTF9/YZD+OK1V8OuYR/hkmE4nh6qUlScutll
         G+YQ==
X-Gm-Message-State: AOAM531ZZvJRTts9XG4/RtXlVI5MHXrAgqAksVO5xrv5noVneQW1zVwQ
        dt8w42Iv2Mz3w6nnq1vWTr7Svw==
X-Google-Smtp-Source: ABdhPJxmtOSaTd8b5BlKTVguPhUAtEs6F+RHz3Hg//CO1Akpchfkc9PKUNmV2slRVpL6iMt0wsZ8GQ==
X-Received: by 2002:a17:902:d883:b0:153:51d5:445d with SMTP id b3-20020a170902d88300b0015351d5445dmr11440328plz.30.1647312597536;
        Mon, 14 Mar 2022 19:49:57 -0700 (PDT)
Received: from localhost ([223.184.83.228])
        by smtp.gmail.com with ESMTPSA id f4-20020aa782c4000000b004f6f0334a51sm20694162pfn.126.2022.03.14.19.49.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 19:49:57 -0700 (PDT)
Date:   Tue, 15 Mar 2022 08:19:52 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Heiko Stuebner <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 3/6] ARM: dts: spear13xx: Fix sata node name
Message-ID: <20220315024952.3we7hiwrkskb4tsy@vireshk-i7>
References: <20220311210357.222830-1-linux@fw-web.de>
 <20220311210357.222830-4-linux@fw-web.de>
 <20220314034940.rxkgue2kllnqhucp@vireshk-i7>
 <trinity-0f1389c2-6d2b-4499-a2fc-3cb93f4d09cb-1647272336831@3c-app-gmx-bap56>
 <Yi+4oN5xuS2pq0ru@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yi+4oN5xuS2pq0ru@robh.at.kernel.org>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14-03-22, 15:50, Rob Herring wrote:
> On Mon, Mar 14, 2022 at 04:38:56PM +0100, Frank Wunderlich wrote:
> > Hi,
> > 
> > thanks for for checking the spear-patch.
> > 
> > > Gesendet: Montag, 14. März 2022 um 04:49 Uhr
> > > Von: "Viresh Kumar" <viresh.kumar@linaro.org>
> > >
> > > On 11-03-22, 22:03, Frank Wunderlich wrote:
> > > > From: Frank Wunderlich <frank-w@public-files.de>
> > > > 
> > > > After converting the binding to yaml the node name does
> > > > not match the standard pattern, change it.
> > > > 
> > > > arch/arm/boot/dts/spear1340-evb.dt.yaml: ahci@b1000000:
> > > > $nodename:0: 'ahci@b1000000' does not match '^sata(@.*)?$'
> > > > 	From schema: Documentation/devicetree/bindings/ata/ahci-platform.yaml
> > > > 
> > > > Fixes: 07658d9a659b ("SPEAr13xx: Add dts and dtsi files")
> > > 
> > > I don't think this is correct. The above patch is correct. The first
> > > patch in this series changes the names and that's where things break.
> > 
> > it's right that my binding will break it, but the nodes are not named the right way.
> > And i used the commit that introduces the wrong node-names.
> > Maybe fixes-tag is wrong in this case.

The problem is that people will try and backport this patch of yours to earlier
stable kernels, because it has a Fixes tag, while the kernel isn't really broken
then and there is no need to backport anything. This patch (and others in
series) are just fine, just drop the Fixes tag.

> I'm pretty sure Viresh just meant the Fixes tag is not right.

Right.

-- 
viresh
