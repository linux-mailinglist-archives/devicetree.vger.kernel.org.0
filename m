Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3DF44E7839
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 16:44:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354455AbiCYPpe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 11:45:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377752AbiCYPnx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 11:43:53 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 352F3BB0BB
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 08:40:34 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id b188so8508884oia.13
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 08:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=D+jLkCpaZNDCy/uHdMrqvNgmVKMmoKiEpprLxsWBcrk=;
        b=WBMTOJnlOcFnH70i8g1Z6BQViSEKTHEq/JyckGw+LCen6SAQFfxSLY90bsZOQGT++Q
         nPQ1kRnmegekXItS+NyN2cZnYsT4bcgYYUcAmvnTsFmmFyNWgFtPfCsf2CrfGmDnzHD7
         6GJhJIbuezWeKdL9cDaz14ZtbczF4ms9wTV7M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=D+jLkCpaZNDCy/uHdMrqvNgmVKMmoKiEpprLxsWBcrk=;
        b=8EjJqoBEFFWQhNt0X+MtoSXYfRuZ1rwXrthAc7uAI8dDJWK/4UICj80CaspTw/0jan
         rcD5ErG1srgqUsWlYTN9XPgbsQo49AzR1b9EfSG3hcJabSiVYK76xRMP/GhM2lZEfpAz
         3vtkxNMGFQ1EBPsMiBL2oaPPskWiAF6p+83lvBEmzhVZGQLsrNgWfBbCam6XulRYoJWc
         r6jtKnzzg/zeNdxkrU8XeWljYsjEyZo8uAxcJi/gD5/HMV/JLGLm1dSNUIvndIPX6K44
         w+7hAbUgn+hj7sgmAuJdMy9tgaA/1kogT93wMeo63gsgjYF6aSf0gH7Plpr931VLDDS3
         Gnvg==
X-Gm-Message-State: AOAM531GwZfdKVJX/TDNdkyT+YUupz4EBW/PC8Zc7ADFHZ1X+O9gRieQ
        Wo+sKc08+wvDhCVB8vLmS1L86gT4/msPquk4n9Ys8e+tNNI=
X-Google-Smtp-Source: ABdhPJzHLYq1n0oMw/ZrH7LYQF2eWCeFDmwwVx7wahLFhNpTjgHMpkRd/MVfGx7ajwKra2C02IMCHnunrXRCl3BK0Bo=
X-Received: by 2002:aca:bd41:0:b0:2ec:ff42:814f with SMTP id
 n62-20020acabd41000000b002ecff42814fmr5566847oif.63.1648222833524; Fri, 25
 Mar 2022 08:40:33 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Mar 2022 10:40:33 -0500
MIME-Version: 1.0
In-Reply-To: <YjknOFMere5DG5He@robh.at.kernel.org>
References: <20220321191100.1993-1-swboyd@chromium.org> <20220321191100.1993-2-swboyd@chromium.org>
 <YjknOFMere5DG5He@robh.at.kernel.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 25 Mar 2022 10:40:33 -0500
Message-ID: <CAE-0n532uGx+VstUEt9ZC+_6Tg6_HsaJAsKn1p02Q3qV9XqEPA@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: chrome: Add ChromeOS fingerprint binding
To:     Rob Herring <robh@kernel.org>
Cc:     Benson Leung <bleung@chromium.org>, linux-kernel@vger.kernel.org,
        chrome-platform@lists.linux.dev, devicetree@vger.kernel.org,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rob Herring (2022-03-21 18:32:40)
> On Mon, Mar 21, 2022 at 12:10:57PM -0700, Stephen Boyd wrote:
> > Add a binding to describe the fingerprint processor found on Chromebooks
> > with a fingerprint sensor. Previously we've been describing this with
> > the google,cros-ec-spi binding but it lacks gpio and regulator control
> > used during firmware flashing.
>
> Then 'google,cros-ec-spi' should be a fallback?

How do I describe that in the schema without causing google,cros-ec.yaml
to jump in and complain that there are unknown properties? Do I need to
combine these two schemas and then have conditional properties?
