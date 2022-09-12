Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B9B25B54FE
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 09:05:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbiILHF1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 03:05:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229572AbiILHF0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 03:05:26 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C9C51EACB
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 00:05:24 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id gh9so17957102ejc.8
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 00:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lixom-net.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=Kf+FkOZAH6AiTAa/Q5l98MlMhVQ6qbmRpLywVY10mCk=;
        b=PT7Vu5cz2P1peiG8JmLn2GwcbupWOSdW6QG2r2oxPQ66p/B3g9Xe5GZHDdeDDIKCC3
         YUtV5XVdg/9N9GyN1gByyrJMERlxwo4VaUzUHAHbTvGYF1SANtCLm6FV9aemWBjHcr6U
         4hfPm+2zW71DtHZ0i7l1Ip7jS8pLrLdia/E9I8QQCI5IC1Ww3HprBOt04cw5IGcXnH0F
         3+nZ8CHDL1DWyvIPsap+GGjA9uCmcmoomUtQnnmhIJIPK74LBOYGUr3VSWMaLeKGdn8Y
         H0erMsBLzYk3vt4vbZMflE1rtGXWnvfvj6SYRQOidg60Sg1jwtv4bd46i7Nf42J4APau
         /JWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=Kf+FkOZAH6AiTAa/Q5l98MlMhVQ6qbmRpLywVY10mCk=;
        b=KAyw80GwUaDMcUmroNnbVgVghVksnCYi/6r8lozHkFV9psW6r7diwBruRdJ18Da29P
         sOV3d/h2HVM/mLb+35zf6aUwp8swqbZ65f6UmuDQcZ69ZC0ncqW6nrmTk93Ajy3ChItr
         qK54bt7ckKE5pjhKJzFA7DK4bWm8dBBNBGbel7yRhfn99ygJjYM160jAbeRAn6gAs9DW
         /VDLxRtDEJAvOClYTz8fDpzdjMpayvqRpVyYCeY9wlUOE5pUS3GZNlM7qCWRZaKwBQgH
         Y7Q5u8YajAqgMHv8MlV1gEXwiZgoLAAMz+r1MA6UGhyoJ5qMfcjN6K4qcNvOYhTj/5sD
         Bj0A==
X-Gm-Message-State: ACgBeo14H9zHfErr4siACAR7L3KrwSDvf7SbjiQEf7f3MPR4MGhksJ0M
        Er3BgKRXaHmkXGzkKi6t/k3+LXNtnZVZI+/EsOvBbZixT00=
X-Google-Smtp-Source: AA6agR4juZkX/WWMyqANDFVwY1iR8lzXvuj5BbeRyk8aFY1KG7jPxHEziPtntEOXo4NBSAdqjxZweFWNo+JWMXWPtro=
X-Received: by 2002:a17:907:1690:b0:77c:37be:2345 with SMTP id
 hc16-20020a170907169000b0077c37be2345mr4714757ejc.359.1662966322965; Mon, 12
 Sep 2022 00:05:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220817202538.21493-1-leoyang.li@nxp.com> <20220817202538.21493-2-leoyang.li@nxp.com>
In-Reply-To: <20220817202538.21493-2-leoyang.li@nxp.com>
From:   Olof Johansson <olof@lixom.net>
Date:   Mon, 12 Sep 2022 00:05:11 -0700
Message-ID: <CAOesGMhz8PYNG_bgMX-6gka77k1hJOZUv6xqJRqATaJ6mFbk6A@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm64: dts: lx2160a: update PCIe nodes to match
 rev2 silicon
To:     Li Yang <leoyang.li@nxp.com>
Cc:     shawnguo@kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Aug 17, 2022 at 1:26 PM Li Yang <leoyang.li@nxp.com> wrote:
>
> The original dts was created based on the non-production rev1 silicon
> which was only used for evaluation.  Update the PCIe nodes to align with
> the different controller used in production rev2 silicon.

How can I confirm what version of silicon I have on a system?

My non-evaluation commercially purchased system (HoneyComb LX2K) has:

# cat /sys/bus/soc/devices/soc0/revision
1.0

And I will be really grumpy if this system stops working. It's what I
use to do all my maintainer work, even if that's been fairly dormant
this year.

It's overall setting off red flags to update an in-place devicetree to
a "new revision" of silicon instead of adding a new DT for said
revision. 2160A has been on the market for several years, so it just
seems odd to all of the sudden retroactively make things
non-backwards-compatible.



-Olof




-Olof
