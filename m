Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A359531965
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 22:54:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232630AbiEWUM3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 16:12:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232624AbiEWUMV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 16:12:21 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3186338B4
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 13:12:14 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id i27so31108261ejd.9
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 13:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QZXLD0VurYCh4Xqp/G9KEyyGkpU1wTIUGVr+sFogb9o=;
        b=Fj0W+N17zW6yRB4z6FkPqWEjRsyQ3VQSEGzXc/5AmfMrpkVI6MFFl9VFv9gD4moqur
         MJO9gvDkoO1boyRj1TJD795LktG2BjimRT2Gu1I300lL3fWQ5usYaZLYclexuSqNF45Y
         FdBoQBnUnSSAAH6TSh8d0dYmyZ1QnEiVktIcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QZXLD0VurYCh4Xqp/G9KEyyGkpU1wTIUGVr+sFogb9o=;
        b=61moRkaA4zssIaWcgFmHd8euC0ronGnoBbAIYoJnkNgYE2o+3WqjomU6wbc2IKHkYV
         gMnbFq7iFjpspe5DKmn8nQ/1E4d5PvSuCTzO27rAEtTzfzx/MwcHtdRURNXgzX8H5qIP
         n/weN/LrqRPKhEQr0TfEBoe+1WrWD8svhOZySNqW6OfUxKYEi2kBtJAEMiugb9i2wRpy
         7w43vB5OFcX9NswhDQRpyqp3pDCXHo9PfXsiRgL4X4B6QWeLXWI4+1o34iev5R9zoqNs
         jgoLJ54g7qoSsLMULO9zK96bGeJt/azpQ8pOsN4TxKn5Cp+lDEx+7rOfcwdok7BtWuWx
         FQxg==
X-Gm-Message-State: AOAM530z56Y6MV3KT2z7r3Z6JTH1dP9m324SDuPmd0MH2khs1XbZUD0v
        UjItcqVGstbebj910MwyoKyZmm3URugS3Okydw8=
X-Google-Smtp-Source: ABdhPJz+JEJOate0EM88+C3Jy6kJE6CHQZ0+wwcrvOg45QrIQYgpiWsUs+fn+NxcQSZBU8NJ4u24ow==
X-Received: by 2002:a17:907:7242:b0:6f5:2ca3:f1cd with SMTP id ds2-20020a170907724200b006f52ca3f1cdmr21438439ejc.480.1653336733393;
        Mon, 23 May 2022 13:12:13 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id jv21-20020a170907769500b006febde6d771sm2930708ejc.160.2022.05.23.13.12.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 13:12:11 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id r23so22932702wrr.2
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 13:12:11 -0700 (PDT)
X-Received: by 2002:a05:6000:1c03:b0:20e:5cac:1eb5 with SMTP id
 ba3-20020a0560001c0300b0020e5cac1eb5mr20567416wrb.422.1653336730934; Mon, 23
 May 2022 13:12:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220523123157.v2.1.I47ec78581907f7ef024f10bc085f970abf01ec11@changeid>
In-Reply-To: <20220523123157.v2.1.I47ec78581907f7ef024f10bc085f970abf01ec11@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 23 May 2022 13:11:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XAVrBuOiHJju+xsLbzEvdMjRO2a7U8T9j=H85xuBQrdA@mail.gmail.com>
Message-ID: <CAD=FV=XAVrBuOiHJju+xsLbzEvdMjRO2a7U8T9j=H85xuBQrdA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sc7280: herobrine: Don't disable
 the keyboard backlight node
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, May 23, 2022 at 12:32 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> On herobrine boards the keyboard backlight is controlled through the
> PWM LED driver. Currently both the PWM LED node and the node for the
> keyboard backlight are disabled in sc7280-herobrine.dtsi, which
> requires boards with a backlit keyboard to enable both nodes. There
> are no other PWM LEDs on herobrine boards besides the keyboard
> backlight, delete the 'disabled' status from the keyboard backlight
> node, with that boards only have to enable the 'pwmleds' node for
> keyboard backlight support.
>
> Also add a label to the 'pwmleds' node to allow board files to refer to
> it with a phandle.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> (no changes since v1)
>
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
