Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0AD2746AD1
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 09:39:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230016AbjGDHjx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jul 2023 03:39:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231379AbjGDHjw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jul 2023 03:39:52 -0400
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CBB11AB
        for <devicetree@vger.kernel.org>; Tue,  4 Jul 2023 00:39:51 -0700 (PDT)
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-c5e76dfcc36so174588276.2
        for <devicetree@vger.kernel.org>; Tue, 04 Jul 2023 00:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688456390; x=1691048390;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xp+QKEk7TTS2IiTonm6ANj4/wmZQdWj2NqG5aVXpncM=;
        b=bHYWYL8i4lzh8sEhz5VZ8+QaouZrpUmg2mnnB9W2cInPjOz7hlnDoU+HGYgvKXBVjm
         mytGluOUKmL28Mxr3kXdWQIcLu+ZI6M1RV/LyiNYkJizaECi4u1c2HBrkYjW4UViirN1
         ZB+kzmzWoNlT6DMXJJzMfNPahkMge+5q5qOenf8yORBDkr4oHl06HX2XEWkroMSb5TdW
         Ha74K4JQds9cf4q4KuV+Ay1sBb+IV2zRzSEOy83eTYtyFhY5zUPjo8hy3SoOpZLF8YH+
         3nIA8dM07vcG7lUiwsEgxO+WmO2oM9sQhyNQXyAwU0u34iE71/eY28Eb0wHJbA0h17nU
         ngwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688456390; x=1691048390;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xp+QKEk7TTS2IiTonm6ANj4/wmZQdWj2NqG5aVXpncM=;
        b=JrVnGWFeuuP9fpnPrLA/7Vo9t0lqGLQjK3g2n3mYa0QQdO/WVM7NSem8luQw14QE4h
         mPpUJlru8bBSUbuhfRtUHx4EjwXSHvwIeikISLSAb8hZifbqZaPuANYSCrwAGsPCEsZV
         Br+KNo0vZa0IdmxRYvtL6/6OPlNgO9cF6agOL5FupRZjoAOPB0nxIkaLlcnEZGHPNJdv
         qKWMijkxq/Y19I/GSo+IwSnEqgOmVA1LooivFf6CJNgdt40BDZwLgFICCd0AYUTBXjZL
         TAYNJ5/omVF6zRxvSqbNV+W52D9dDj6bhL33pzvyfkuH9WhSfdwqwrmR5PdDJqylhYk3
         az2A==
X-Gm-Message-State: ABy/qLYyhU4S8DeThBBMQZcOeC58rp2tArv2wC6FVz2/DFm7VkTFBHGV
        lyCCvn7yQ6l7XANACuC717ea4E1CE0Vse7VZ5/owUA==
X-Google-Smtp-Source: APBJJlHDKKwZ79lFPkNzLD0TjSMaB69YfKzURQNSkXUvL8aTFXOSk+TSkTezVMXogst0zaQgctBCu8vKcQH5YGpdOw8=
X-Received: by 2002:a25:8142:0:b0:c02:e455:e2c0 with SMTP id
 j2-20020a258142000000b00c02e455e2c0mr10207480ybm.11.1688456390657; Tue, 04
 Jul 2023 00:39:50 -0700 (PDT)
MIME-Version: 1.0
References: <20230627050148.2045691-1-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=WR=fnhCxC37Eo3hinh2MV=eTNuXG+GrwgR6K_pV4Rbaw@mail.gmail.com> <CAD=FV=UcFn7Wq_Ock6RCT0mPhgjpJwF7dJjcbwcoESW9nni62Q@mail.gmail.com>
In-Reply-To: <CAD=FV=UcFn7Wq_Ock6RCT0mPhgjpJwF7dJjcbwcoESW9nni62Q@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Jul 2023 09:39:39 +0200
Message-ID: <CACRpkdb_6n+CKUHYu5nAtCEKK_VwO2hGUUCHny56oSYt_vTfLw@mail.gmail.com>
Subject: Re: [v2] drm/panel: Fine tune Starry-ili9882t panel HFP and HBP
To:     Doug Anderson <dianders@chromium.org>
Cc:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
        neil.armstrong@linaro.org, devicetree@vger.kernel.org,
        sam@ravnborg.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, hsinyi@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 30, 2023 at 2:42=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:

> ...this means that it lands in drm-misc-next-fixes, so I've pushed it the=
re.
>
> 59bba51ec2a5 drm/panel: Fine tune Starry-ili9882t panel HFP and HBP

I guess that means we need to merge drm-misc-next-fixes back to the
drm-misc-next branch so that I can rebase my series breaking out the
ili9882t driver to its own file?

Yours,
Linus Walleij
