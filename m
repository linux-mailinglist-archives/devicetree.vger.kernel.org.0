Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 770BD693EDC
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 08:21:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbjBMHVc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 02:21:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229585AbjBMHVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 02:21:31 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18B54AD25
        for <devicetree@vger.kernel.org>; Sun, 12 Feb 2023 23:21:29 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id bh15so9436554oib.4
        for <devicetree@vger.kernel.org>; Sun, 12 Feb 2023 23:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ufispace-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tu3Rg9Nc9tQdXwpvmhafgzXQ8RyOPEDDD2j9N3bOJ9Y=;
        b=rhbucKsaF7+Mk5ib60jTJ4D0s6/wXI1ilnFVZL1k4ehPJhvQbhPNAXBSEuaB7pBRI6
         YzV7Vy78+B/h5/Q3qudP6b37y3hwjZTMu/9swOgfDQF3UQX/M1VBwGHZs1gPxoRUPylD
         7KaOtEwpu5DsCLNyqKLu/GEOR7Uq7t4ZJMIHJNwlJzVBqPtgW7Qtg/DzzDpUYpsLoiRS
         VY8k9f4nfwTL8v1/OTSBBTceUOOLdfHKNdfL2afWwk2TlKKsEmqm/VgFZYcwCKCiQUQA
         FIijhynrGCRyo/ZGOIYVhi2QxxZ6rB0sX6CyETwBpA8aqIc/+2mvCjusVthnscPfCu3v
         tkdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tu3Rg9Nc9tQdXwpvmhafgzXQ8RyOPEDDD2j9N3bOJ9Y=;
        b=pzlPnVKJg2DbaM6NlkoJifnvLoczw0UCTXZK9JTNTryr6KGK0KvWtjNKY76od8Ufus
         YjjsJfyAE48XSPKQzmEnQiRjPirbLzf/YGirP0xQ95d8N8yrbZ9mz/aCCziI8Ru42Zi1
         TSGVxgFb9C5zYYvJq3acNW87cEMhIXB2u1kdHpJRiVoXUCMDOB8o3Rn8dSmar44caCQF
         Pd208xt4R/PFxpL+10yX4z0fB7ZbZTx6/2LWxP3+wqE/Od70kYOtEX6WxB4VpoOMv4VO
         lOeFQEGnAFsncht4Bfh5Zu47Qc5hDb/23seUnEiE4iNvqOCRXlPzvSSFJx3LSzOPF52E
         DY+Q==
X-Gm-Message-State: AO0yUKVs6e0SJpK5R4gubP12gR4PRkFyzgPB5HEJoBVePhcspFaRkOep
        T97+AS5aoV7xNdJ1lA9guwRaQowR1VfqA7NP3Vu5VaM66VfSm4+uqss=
X-Google-Smtp-Source: AK7set/e0bJVfEBzygvuQJIzqcbZTs/OUfDWmBy0vBYsOf67t1TDn9nW5hUaKrWnY73k1wjEjHI3BRLZg/+VRobb8wc=
X-Received: by 2002:a05:6808:60d:b0:37b:7c36:4df8 with SMTP id
 y13-20020a056808060d00b0037b7c364df8mr1721341oih.144.1676272888357; Sun, 12
 Feb 2023 23:21:28 -0800 (PST)
MIME-Version: 1.0
References: <20230210103829.74470-1-jordan.chang@ufispace.com>
 <20230210103829.74470-2-jordan.chang@ufispace.com> <12424bbd-cd3c-4d96-a7d8-1c83241b845f@app.fastmail.com>
In-Reply-To: <12424bbd-cd3c-4d96-a7d8-1c83241b845f@app.fastmail.com>
From:   Jordan Chang <jordan.chang@ufispace.com>
Date:   Mon, 13 Feb 2023 15:21:17 +0800
Message-ID: <CAJ3czeQSEv48M=_DWHs1-b7OxLccY1xe-VfNYRq9JUv_fHt3WQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/1] ARM: dts: aspeed: Add device tree for Ufispace
 NCPLite BMC
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Rob Herring <robh+dt@kernel.org>, jay.tc.lin@ufispace.com,
        eason.ys.huang@ufispace.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andrew,

Thank you for taking time to review.

On Mon, Feb 13, 2023 at 9:56 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > +
> > +     temperature-sensor@4f {
> > +             cpmpatible = "national,lm75";
>
> s/cpmp/comp/
Will revise the typo.

Best regards,
Jordan Chang
