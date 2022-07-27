Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DDD95827F5
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 15:47:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232128AbiG0NrT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 09:47:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232123AbiG0NrS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 09:47:18 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A02761FCFF
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 06:47:17 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id l23so31606862ejr.5
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 06:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=pD0G6ny8EAD0fMDMtOYPnO+aHsM6w839YN2s9qtUO/w=;
        b=L1byLWBM5YH28gi4Bs1fGqwkapmLINXqI7aiicDL3mtTozi4QwNWR0oGxgjb+FDs5a
         yL+xGnAZOL73IGmyKARW8Sfna9lpTCMbrcGxV6mfKdqIV5qPb9ZAIq8/TxmN75omBmJC
         +B+ziwGdlhNOkP9Mtbqq5CA42dWBnPy2PKtqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=pD0G6ny8EAD0fMDMtOYPnO+aHsM6w839YN2s9qtUO/w=;
        b=Y1OU/8jMz+PyKNOTqIHs+bjPfUzP9vlyQPl0MSKQpkr+pX/fr9Ju7/gesLP9pS0HN9
         0G9hwcH8vucPttVDZXbh949+ZFb+xkB3ak7BBFQnZ9KV12nABheYqQ3s9AcQy5hIIF4X
         SjsVbTR52fA7aqfCJ2N2FPKIRslN2LzMd6IgaEcwJBc1fYaxIO+i1D8NXzzdCoaNomz0
         Sv/vujGE8hFz/qCvUWu2uLoXPxPgPXE8jOrYPsVOtkq6ird+caAOGODslTJvMipXNvha
         rczBRn2InZwrcq7AAJtuLuyzfe3iXI5lQWRx0WaE4gbak9N4dma3/QtyysESMu6V1QLW
         Yt9w==
X-Gm-Message-State: AJIora8/E9GuaLqPi7OGuTFh6QZi2lIIM5S8aNDCwhLopB/08ojkVIt2
        SHtPMlHkfiT1MBP5raDaFTTZoOS+P7GeOISx
X-Google-Smtp-Source: AGRyM1tlhlyNnykdt491/aWZkzSxQtoq7IU9KfbJji6Q0vcAcpQ3xBllfU6dNb2KS364Zmen6lRxVg==
X-Received: by 2002:a17:906:a089:b0:72f:826b:e084 with SMTP id q9-20020a170906a08900b0072f826be084mr18593755ejy.708.1658929636053;
        Wed, 27 Jul 2022 06:47:16 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id ha3-20020a170906a88300b0072b6d93b9afsm7555406ejb.210.2022.07.27.06.47.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 06:47:15 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id q18so13861965wrx.8
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 06:47:13 -0700 (PDT)
X-Received: by 2002:a05:6000:178f:b0:21e:98ee:f1e6 with SMTP id
 e15-20020a056000178f00b0021e98eef1e6mr6771624wrg.405.1658929632986; Wed, 27
 Jul 2022 06:47:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220726212354.1.I5b9006878bdabd6493b866b46dbd6149968d545b@changeid>
 <20220726212354.2.I7d57fb9c4806a8b3fe3501c766b64f4987c271ef@changeid>
In-Reply-To: <20220726212354.2.I7d57fb9c4806a8b3fe3501c766b64f4987c271ef@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 27 Jul 2022 06:47:00 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VrRXzdf7kA+ztGaxBgCVpeSRjC9MD4q2g5R6hJxStw5w@mail.gmail.com>
Message-ID: <CAD=FV=VrRXzdf7kA+ztGaxBgCVpeSRjC9MD4q2g5R6hJxStw5w@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7280: Add support for zoglin
To:     Bob Moragues <moragues@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Bob Moragues <moragues@google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jul 26, 2022 at 9:24 PM Bob Moragues <moragues@chromium.org> wrote:
>
> Zoglin is a Hoglin Chromebook with SPI Flash reduced from 64MB to 8MB.
> Zoglin is identical to Hoglin except for the SPI Flash.
> The actual SPI Flash is dynamically probed at and not specified in DTS.
>
> Signed-off-by: Bob Moragues <moragues@chromium.org>
> Signed-off-by: Bob Moragues <moragues@google.com>

Again, other than the extra Signed-off-by this looks right.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
