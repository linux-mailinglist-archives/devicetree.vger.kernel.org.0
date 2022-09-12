Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5CDD5B619A
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 21:22:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230492AbiILTWZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 15:22:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231124AbiILTWW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 15:22:22 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5DCC4457F
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 12:22:19 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id p1-20020a17090a2d8100b0020040a3f75eso9140758pjd.4
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 12:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=ssS5zdl8ImzFpzzUh/59HsD/G3hcv1J/zHJhsPeEVKI=;
        b=QTNd0+iDH81yMYKwvCkapX347WklRs1UjNbmqjqu+SixUF/dyK2U/L25vDmJoSKOi3
         cldUN75Qt3pWVPV4ItiOTKw3QmVbfx2t9fO+kOp/uR+OVGSNK84/CGvdkYW2B6CYdcFW
         Wq+yE+ym4VzTjz6ZEaev54lNyuvfsYAMRbx9WBKIbKDfFApLXXh7HCbQDbOWXbuV7e/Z
         p4ZYhleNdJoMyxd/UMk4saHWkZIy8ocYbb+uic0g2UPbXa2o3re6fnkS/4PFf64IzvLj
         h5/aLBm5eprqh9XYSKn6YxzUzZrJc1ikkmR4FgUwPDRheKWQz3X4hv09w283fMWLjILy
         yfaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=ssS5zdl8ImzFpzzUh/59HsD/G3hcv1J/zHJhsPeEVKI=;
        b=EQPSymVQZNT6QINYhjyaqCV+9XHhMHeXD01+ehLkytXayvQeH19WxQuX8sX+GxSL70
         YnKdg1DOpb+OUuGioyArryjmWe6JPJtSdwGwFcnlg+4M8IA71qtmpkq2KUBFDtz3niAN
         kv/os1oqifLE5RO5nvh4FzJAvbYd1eCCSu1OsusRBBfdgXHUBCPbDvbJ3r2pQDjrfkXv
         kDmkdIy0o45d1d4juO4YvlUnKj+Ko45OeD5KT8POTNjuGr4Ru85IfGjpPHVstI8ms6Ln
         rGFlNvCk17Q6YqE7OXgj3uzyjSazTbVRzlxDPxNWDQWCPyIva0/7PgJWhZg0j6zmknNQ
         LxQQ==
X-Gm-Message-State: ACgBeo1eTHiGLnftkGJ5qLtYy4gHO4CZNtAoV45BI5VafLiOwtrcpfz0
        zxlsQ0CfY3ptStK//8CSMv2F662zdeDb0gXgkJYJoA==
X-Google-Smtp-Source: AA6agR7HIYkNnScIvRpJFZ0Oo8uVvzZR00lzwcMhNhL2BpnUIm/nvmgBF7LUeuTXgD11N++k7tQH3Pa9XHu01N2sGa8=
X-Received: by 2002:a17:90b:4f8d:b0:202:dd39:c03a with SMTP id
 qe13-20020a17090b4f8d00b00202dd39c03amr5104418pjb.71.1663010538983; Mon, 12
 Sep 2022 12:22:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220907160207.3845791-1-jagan@edgeble.ai> <20220907160207.3845791-2-jagan@edgeble.ai>
 <6158946.mvXUDI8C0e@phil>
In-Reply-To: <6158946.mvXUDI8C0e@phil>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Tue, 13 Sep 2022 00:52:08 +0530
Message-ID: <CA+VMnFz3+vx4b3H=v7g1q-ytKLRjohs2tGmeuA6sRfWA8J6BRw@mail.gmail.com>
Subject: Re: [PATCH v4 01/13] i2c: rk3x: Add rv1126 support
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-i2c@vger.kernel.org, David Wu <david.wu@rock-chips.com>
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

Hi Heiko,

On Fri, 9 Sept 2022 at 22:58, Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi Jagan,
>
> it looks like this is missing Wolfram Sang, the i2c maintainer?

My bad. I will add him in the next version. Thanks.

Jagan.
