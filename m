Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 626264A88A4
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 17:35:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352240AbiBCQfX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 11:35:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242530AbiBCQfW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 11:35:22 -0500
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9049C06173B
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 08:35:21 -0800 (PST)
Received: by mail-yb1-xb35.google.com with SMTP id j2so10842317ybu.0
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 08:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oPyaAvEtdJH++WDtQsfHJFEBuo6QHijQrPaLImzUuV0=;
        b=iodhaaRiTSlJsMrQ2rysn98rztbb0JF1+3C/qdYn8eZ205G9o7D2xLCIkj1jlnAej3
         Jth01jXJ8hH08JyaRAdFEpE6PK3jaqz+CVn5H2PECYchKHpmIAZ+Nwuh5VI2vTtwZQbd
         F+ZIX47vK3Gx5IbW/GTsSIte+M+SlXKQ3vLlZMp+9vLdbynEFBsPh5m1F72Ss2QEyFKT
         FYOc5WSZ3yYzqQRZ1ojfTwAzFG43BfAO+st3XUrrL9B6DoB+//cQ45lE4D4UjvIFKRkq
         3VEFJT3f+/6DPWSmpLRco78ulXYmQymcuBBzBcbEWqI6XchkTF4E63/8daccPFOaHmr2
         4OXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oPyaAvEtdJH++WDtQsfHJFEBuo6QHijQrPaLImzUuV0=;
        b=TEJWlMPzmHof7nJ6noYUx59kyqiTBrr6lyyUTYgZBUxLEAj9K2GuGWJhBBa/o+QuH9
         nR6uhffi1s7P0KWZO8P8fU9QLMLgpZ5amcERYpAPNo2ctcV/AMmmowQccmaPP+qH4SXG
         qQTytRxmyRmWWzdbgRgcrgKHtdc+4yijnG6hC3Z1yY2XYZqmSTOuEsBbymy1G8T2oTe5
         3xaYoubliK0CqFPfRhtXkivXe8xwuu+Ev5eGPM1/UAx+/8WmIZBLerm1BS6SXKUxK6bI
         FAv9wFD4SureW0saaEpMTdAaVVOPAnlRQvn9EL1WCdgn67svGRSHqb0WxLvbNaHFUb+6
         MWCw==
X-Gm-Message-State: AOAM530GOmUb/rSvIAszG+RpUarmZaK5e9YsSasQ8usk0rS1HSSqiu3o
        w0qHZVaEnBCoAnHtIilTXmdoW/WEMgCZ1qQbqrbdiw==
X-Google-Smtp-Source: ABdhPJwPpV0qhSSOjoMf2U6ukA+nrGwkJ2vJrhfhKQI75mWoHXb0/OVQxxUCPt0pr1lBInb2g522JrAti/o5iVL3NnE=
X-Received: by 2002:a81:6686:: with SMTP id a128mr4995423ywc.541.1643906121126;
 Thu, 03 Feb 2022 08:35:21 -0800 (PST)
MIME-Version: 1.0
References: <20220202235049.8051-1-samuel@sholland.org> <20220202235049.8051-2-samuel@sholland.org>
In-Reply-To: <20220202235049.8051-2-samuel@sholland.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 3 Feb 2022 17:35:09 +0100
Message-ID: <CACRpkdbS_LZTsB8M5mJ3GGrSeYD4Eouttj1PgUGSdMAm4yp=Lg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add silan vendor prefix
To:     Samuel Holland <samuel@sholland.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Denis Ciocca <denis.ciocca@st.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 3, 2022 at 12:50 AM Samuel Holland <samuel@sholland.org> wrote:

> Hangzhou Silan Microelectronics Co., Ltd. (http://www.silan.com.cn/) is
> a manufacturer of ICs, including MEMS sensors.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
