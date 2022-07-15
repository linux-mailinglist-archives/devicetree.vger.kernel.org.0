Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D9985769F8
	for <lists+devicetree@lfdr.de>; Sat, 16 Jul 2022 00:37:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229891AbiGOWhR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 18:37:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229648AbiGOWhQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 18:37:16 -0400
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79A956B27C
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 15:37:15 -0700 (PDT)
Received: by mail-lf1-x144.google.com with SMTP id bf9so9984250lfb.13
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 15:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=ScjE9i6LXM9Rwff2MvoBnOotBajOvuKKyX/Ml+jgy3A=;
        b=DrMBO4DwQTNvaH1y437jai09t9++yYk+a3I4B9vv4j90cOCr3eV4B02OB4afmvWAou
         jPBsZe2u0ApUZmrAB/IraKwtY+OpJ9Jbp/01m+Rq2PRjDM7zetwMZrykWgX74ryudw5R
         tqvLF1V0QYUoyAruocYLNSsDyTupjKA+geAHymjdGI0nE2XMZ9H0GRfjV+KXAvMMVXof
         B8PasYFrAIAhYPO5eyu6ENoUzP1K7Hvx/1PW/GUJYpkuLlPZQ83OwZ0O4a44wggqL5UE
         0qn1YcZNf//Yg0MpSsi3BzjhdiCufZIXI0P2SviwDEXfAsh3QLjJvWfUywxduoP2Ev8V
         7ezw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=ScjE9i6LXM9Rwff2MvoBnOotBajOvuKKyX/Ml+jgy3A=;
        b=1++nnKwE/BKsd+dLnf75ronv1CeOM2x9Y2xHTZm3IZRoZf+RGn6i82F25RAASCIVLg
         nA1LhXC0sn/M/b2fmlkI7B7PNfcW/Zj2w0TvZpXozKsrVjWYAn7cIEDgbJy4ipyCWKRv
         mWqRBt20gOcmfES2CfHCtGpp7JJiMFpvJ7VIorwfoXOSvvocpj2v2gF7YGGyQNGk5VgV
         YIjN3WYP+GmT/Z/gNInEHofgt1omvRcB7P8ZCoepaeGoeWGc+8FrG2NOcbgKezI75Qv5
         bKFfeQVTDalISpJ6qNC6bgyQra4/yU6li5vCxP/zsRvhZRL1XwyM1a7lsjrrkugKIqkf
         e4CA==
X-Gm-Message-State: AJIora99oplufIES6A731jFyW8Tjv5WLQnxEYZxDCNraC3GuUVY4ZCbg
        ujFtcog4WhercakYU3BOanG78F48ctYXtchEVy0=
X-Google-Smtp-Source: AGRyM1vRdi05ybTyTubKCEtbSATGjJBBor5vX6EsO4ZE9bGvOm1eNlTGxp15pF96wQE1uq62eEOAu9jIkjJamPioztE=
X-Received: by 2002:ac2:4e07:0:b0:48a:18f3:e5fe with SMTP id
 e7-20020ac24e07000000b0048a18f3e5femr6080640lfr.357.1657924633677; Fri, 15
 Jul 2022 15:37:13 -0700 (PDT)
MIME-Version: 1.0
From:   Maya Lee <ddatahublist@gmail.com>
Date:   Sat, 16 Jul 2022 04:07:02 +0530
Message-ID: <CAFq+BguztNY48i_s7A3fVt0FikbpABFRPgRc7Fgre9aMFmeVJA@mail.gmail.com>
Subject: RE: HR Technology Conference Email List-2022
To:     Maya Lee <ddatahublist@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=2.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FILL_THIS_FORM,
        FILL_THIS_FORM_LONG,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Hope you=E2=80=99re doing well!

Would you be interested in acquiring HR TECH CONFERENCE Attendees Data
List 2022?

List contains: Company Name, Contact Name, First Name, Middle Name,
Last Name, Title, Address, Street, City, Zip code, State, Country,
Telephone, Email address and more,

No of Contacts:- 13,726
Cost: $ 1,589

Looking forward for your response,

Kind Regards,
Maya Lee
Marketing Coordinator
