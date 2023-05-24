Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBCFC70FC36
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 19:09:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233382AbjEXRJy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 13:09:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231785AbjEXRJy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 13:09:54 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18BB110B
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 10:09:53 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1ae3fe67980so4398025ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 10:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684948192; x=1687540192;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VSiv7FiHooBNjd2z6gDTYmV/eBkw3m7qogP3ovVg02M=;
        b=EWRMtIwOxt0/L3OUR+OdttiwoE0po09pKZsxSbEJJ/E2cLDdyWHzhOFfr2nOK1ww/E
         iPzErARrQpcGTIKK8cko/GKCVQFEesiJuOIJI/PgZI1BPAj88qYXYoiFc4uluTi7ELVq
         McckcAztLxNd0EpSZ0+qiuunzzBP4KziHP6AM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684948192; x=1687540192;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VSiv7FiHooBNjd2z6gDTYmV/eBkw3m7qogP3ovVg02M=;
        b=MunjLOZvL7MUkBsBsHmwOhhCtKhLnP3rg7ntRzCFsr1denII8ax70IWBX7KrIgveLr
         +InP237WsmH6qQcWv4Cv0hEV9J0+Nn3OZ2NHOOMsUAgFOLU46XMoJohC9iHlOhoojOez
         TMFd7cC9i7MAkEvrBEYHYuQViN1LgmfoMlTiIXD0YIeIDyj8VB/85Pv7crqlEIuoHFsB
         rN4I/FYrOG4ncXZwyTji6vdrKifvsGXvGoa6bCifPglwetEIytYsJMmQ964HaXsOxMsG
         1UmPDFJeUAY+4lIyrw/ehHcRr1HVWuSgyXCyxEBSdJMV0cDR763wF3mNB14wIlZBEp/A
         +RrA==
X-Gm-Message-State: AC+VfDw3kDX9JPYip0lnJXt9iuDjAIN99oWY30h1uxfK3RLJgfqQsAYG
        7xHcIOLoTpNZX99Loo5EcnULnbzDDxaSAhZ9eiE=
X-Google-Smtp-Source: ACHHUZ7HEiy1+crajogOJWivf4//TDzP8wmfrW8Ta8Vt3xznHs3S3uZ4PY5JuhsiXRLXZHzImI442w==
X-Received: by 2002:a17:903:120b:b0:1a6:d15f:3ce1 with SMTP id l11-20020a170903120b00b001a6d15f3ce1mr22044097plh.34.1684948192083;
        Wed, 24 May 2023 10:09:52 -0700 (PDT)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com. [209.85.214.174])
        by smtp.gmail.com with ESMTPSA id 21-20020a170902c11500b001ac7af57fd4sm9026920pli.86.2023.05.24.10.09.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 May 2023 10:09:51 -0700 (PDT)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1ae64580e9fso4175ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 10:09:51 -0700 (PDT)
X-Received: by 2002:a05:6e02:156b:b0:32e:561d:b42d with SMTP id
 k11-20020a056e02156b00b0032e561db42dmr271821ilu.16.1684947875310; Wed, 24 May
 2023 10:04:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230523193017.4109557-1-dianders@chromium.org>
 <20230523122802.2.I59b417d4c29151cc2eff053369ec4822b606f375@changeid> <646e391f.810a0220.214ce.d680@mx.google.com>
In-Reply-To: <646e391f.810a0220.214ce.d680@mx.google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 24 May 2023 10:04:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WEeeRopigfbSa3mU1aHyr_ZZCnqR94FEn7YTeiDDJ-YQ@mail.gmail.com>
Message-ID: <CAD=FV=WEeeRopigfbSa3mU1aHyr_ZZCnqR94FEn7YTeiDDJ-YQ@mail.gmail.com>
Subject: Re: [PATCH 2/9] drm/panel: Check for already prepared/enabled in drm_panel
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     Jiri Kosina <jikos@kernel.org>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        dri-devel@lists.freedesktop.org, linux-input@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>, hsinyi@google.com,
        devicetree@vger.kernel.org,
        yangcong5@huaqin.corp-partner.google.com,
        linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, cros-qcom-dts-watchers@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, May 24, 2023 at 9:19=E2=80=AFAM Chris Morgan <macroalpha82@gmail.co=
m> wrote:
>
> Thank you for looking into this more. It's one of the last QOL bugs
> for some devices I'm working on, even if the end result is no big
> deal (the other QOL bug involves a WARN on probing a rotated panel).

Glad it'll be helpful!

For the WARN on probing a rotated panel I thought there was some
progress on that front. Commit e3ea1806e4ad ("drm/bridge: panel: Set
orientation on panel_bridge connector") or commit 15b9ca1641f0 ("drm:
Config orientation property if panel provides it") didn't help you?
