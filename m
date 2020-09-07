Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD23726039C
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 19:52:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729172AbgIGMEo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 08:04:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729139AbgIGMEQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 08:04:16 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C074C061573
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 05:04:14 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id x23so4215929wmi.3
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 05:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4GUKufxSGycZUAoRGQc854bBDfYKoTMUxLPDF0LOUDk=;
        b=v8WZY40UxFiHKpBpjksAMuIT+2NPJGG0uRAIejmdygwmxgU8KBIQQP+2entzdbjSff
         /MwcN6OH5s30gyRlq2JEoqlpGZXNH+RzhuciLWaSi1U2x3SRRRv1U/5VtJAt7tRKi09Q
         JCNFJQ2MkzVb0b+48NvysQKtmRiTd03EopJdBfuQwE4vxj9CzOpWPR4j2PnThwVELGRY
         19Rn9Ix2kOvbZ5bpbBroZDnHrSIPw3aihNvDB3tT40m/TmGVEjkUYZqrWHoKDIgopF4A
         EPPcqTmrLzRp31mtHyiOQuaO94Y4InR+vIbYWvg3td8pt6Okq+Y3R7tBqX63+69j8rJv
         X/IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4GUKufxSGycZUAoRGQc854bBDfYKoTMUxLPDF0LOUDk=;
        b=o4IJUQnQHSI5H5/j4cr2Q2hemYhV5N7G01YnfcGu5F07yZzL6V4ALoIWrdjeTneIyx
         lpnPlkfpdqBRp5ix9BgsOLpPTKlK+3jWP4t8VKjQmqu8TLi1wUqXe1ityO7xEAARsC+B
         q1K+DiUMCe+OFCPFJlnjAADJQ1Urjw7E3WREGGJf6CjoaJ1P0KNNTDenSbYrGqWpRHNz
         5/qDhzkAo6VjQ2pLnbc3XV14q0YERrayo/TQHTjNSrBfCOO/qD9ZKhpdEHzZGlGj/S1K
         W1I1z57R9TWUo84ETyRK/3Q/xbC57HZqrpNS1CbNHOumSpIWDNG392wAa3pY93LL5uzG
         YEcA==
X-Gm-Message-State: AOAM531BjLfmhe//muWyfLXnxVXzpbQ8VmNYdL2me03mHR4bo3Esav67
        99Hsa2JaKRGmsz2bOvrVapkQE2q1IEnXuG0eNRGCQw==
X-Google-Smtp-Source: ABdhPJzbBmSiIggBhC/7EOISlc9DpZnaOhME5/3PHn3Lqz4koMKQTMA62H3FvyuD9DbTT7byzurhRrqGZ5G1p7pSlXg=
X-Received: by 2002:a7b:c5c6:: with SMTP id n6mr19924065wmk.120.1599480252545;
 Mon, 07 Sep 2020 05:04:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200829170923.29949-1-sudeep.holla@arm.com> <20200829170923.29949-10-sudeep.holla@arm.com>
 <04735224-9609-4E48-A7F6-8E811AF05223@arm.com>
In-Reply-To: <04735224-9609-4E48-A7F6-8E811AF05223@arm.com>
From:   Andrew Walbran <qwandor@google.com>
Date:   Mon, 7 Sep 2020 13:04:00 +0100
Message-ID: <CA+_y_2FXM7k7=HNFyyWgVL+NgCd7wXZdmHXJ89oROmj1rLK5og@mail.gmail.com>
Subject: Re: [PATCH 9/9] firmware: arm_ffa: Setup in-kernel users of FFA partitions
To:     Achin Gupta <Achin.Gupta@arm.com>
Cc:     Sudeep Holla <Sudeep.Holla@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel-team@android.com" <kernel-team@android.com>,
        Will Deacon <will@kernel.org>,
        "tsoni@quicinc.com" <tsoni@quicinc.com>,
        Pratik Patel <pratikp@quicinc.com>, nd <nd@arm.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
        boundary="0000000000004e4b2205aeb8047b"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--0000000000004e4b2205aeb8047b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 7 Sep 2020 at 12:32, Achin Gupta <Achin.Gupta@arm.com> wrote:
>
> Hi Sudeep,
>
> CIL...
>
> > On 29 Aug 2020, at 18:09, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > In order to also enable in-kernel users of FFA interface along with
> > the access to user-space applications, let us add simple set of operati=
ons
> > for such devices.
> >
> > The in-kernel users are registered without the character device interfa=
ce.
> >
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> > drivers/firmware/arm_ffa/driver.c | 119 ++++++++++++++++++++++++++----
> > include/linux/arm_ffa.h           |  12 +++
> > 2 files changed, 117 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/firmware/arm_ffa/driver.c b/drivers/firmware/arm_f=
fa/driver.c
> > index 96113e594db6..811558ef2a1d 100644
> > --- a/drivers/firmware/arm_ffa/driver.c
> > +++ b/drivers/firmware/arm_ffa/driver.c
> > @@ -372,6 +372,97 @@ static void ffa_device_put(struct ffa_device *ffa_=
dev)
> >       mutex_unlock(&ffa_dev->mutex);
> > }
> >
> > +static int ffa_dev_open(struct ffa_device *ffa_dev)
> > +{
> > +     ffa_device_get(ffa_dev);
> > +
> > +     return 0;
> > +}
> > +
> > +static int ffa_dev_close(struct ffa_device *ffa_dev)
> > +{
> > +     ffa_device_put(ffa_dev);
> > +
> > +     return 0;
> > +}
> > +
> > +static long
> > +ffa_dev_ioctl(struct ffa_device *ffa_dev, unsigned int ioctl, void *ar=
g)
> > +{
> > +     long r =3D -EINVAL;
> > +
> > +     switch (ioctl) {
> > +     case FFA_GET_API_VERSION:
> > +             r =3D drv_info->version;
> > +             break;
> > +     case FFA_GET_PARTITION_ID:
> > +             r =3D ffa_dev->vm_id;
> > +             break;
> > +     case FFA_GET_PARTITION_INFO: {
> > +             struct ffa_part_info *pinfo =3D arg;
> > +
> > +             if (ffa_partition_probe(pinfo->uuid_str, &pinfo->info) !=
=3D 1)
> > +                     r =3D -E2BIG;
> > +             break;
> > +     }
> > +     case FFA_SEND_RECEIVE_SYNC: {
> > +             struct ffa_send_recv_sync *kdata =3D arg;
> > +
> > +             r =3D ffa_msg_send_direct_req(ffa_dev->vm_id, kdata->endp=
oint_id,
> > +                                         &kdata->data);
> > +             break;
> > +     }
> > +     case FFA_SEND_RECEIVE_ASYNC: {
>
> For indirect messaging, I am thinking who is responsible for creating and=
 managing the =E2=80=9Cthreads=E2=80=9D for each vCPU of a FF-A VM that has=
 an in-kernel user.
>
> An approach is the one taken by the Hafnium driver [1]. It creates and ma=
nages a kthread for each vCPU of each VM.
>
> A client of the Hafnium driver only needs to worry about message exchange=
 with various VMs. Thread management is Hafnium specific and rightly stays =
in the Hafnium module instead of being replicated in each client.
>
> Is this the direct of travel for the FF-A driver as well?

I think what we want for the Android case at least is for these
threads to be managed in userspace by crosvm, following the
(Protected) KVM model.

--0000000000004e4b2205aeb8047b
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIPCAYJKoZIhvcNAQcCoIIO+TCCDvUCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ggxrMIIEkjCCA3qgAwIBAgINAewckktV4F6Q7sAtGDANBgkqhkiG9w0BAQsFADBMMSAwHgYDVQQL
ExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UEAxMK
R2xvYmFsU2lnbjAeFw0xODA2MjAwMDAwMDBaFw0yODA2MjAwMDAwMDBaMEsxCzAJBgNVBAYTAkJF
MRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSEwHwYDVQQDExhHbG9iYWxTaWduIFNNSU1FIENB
IDIwMTgwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCUeobu8FdB5oJg6Fz6SFf8YsPI
dNcq4rBSiSDAwqMNYbeTpRrINMBdWuPqVWaBX7WHYMsKQwCOvAF1b7rkD+ROo+CCTJo76EAY25Pp
jt7TYP/PxoLesLQ+Ld088+BeyZg9pQaf0VK4tn23fOCWbFWoM8hdnF86Mqn6xB6nLsxJcz4CUGJG
qAhC3iedFiCfZfsIp2RNyiUhzPAqalkrtD0bZQvCgi5aSNJseNyCysS1yA58OuxEyn2e9itZJE+O
sUeD8VFgz+nAYI5r/dmFEXu5d9npLvTTrSJjrEmw2/ynKn6r6ONueZnCfo6uLmP1SSglhI/SN7dy
L1rKUCU7R1MjAgMBAAGjggFyMIIBbjAOBgNVHQ8BAf8EBAMCAYYwJwYDVR0lBCAwHgYIKwYBBQUH
AwIGCCsGAQUFBwMEBggrBgEFBQcDCTASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQWBBRMtwWJ
1lPNI0Ci6A94GuRtXEzs0jAfBgNVHSMEGDAWgBSP8Et/qC5FJK5NUPpjmove4t0bvDA+BggrBgEF
BQcBAQQyMDAwLgYIKwYBBQUHMAGGImh0dHA6Ly9vY3NwMi5nbG9iYWxzaWduLmNvbS9yb290cjMw
NgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9yb290LXIzLmNybDBn
BgNVHSAEYDBeMAsGCSsGAQQBoDIBKDAMBgorBgEEAaAyASgKMEEGCSsGAQQBoDIBXzA0MDIGCCsG
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
AQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzBRBggrBgEFBQcB
AQRFMEMwQQYIKwYBBQUHMAKGNWh0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5jb20vY2FjZXJ0L2dz
c21pbWVjYTIwMTguY3J0MB8GA1UdIwQYMBaAFEy3BYnWU80jQKLoD3ga5G1cTOzSMD8GA1UdHwQ4
MDYwNKAyoDCGLmh0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5jb20vY2EvZ3NzbWltZWNhMjAxOC5jcmww
DQYJKoZIhvcNAQELBQADggEBACcGKYINXcFU/XWXAuBMWc7BZ6Q8OvqiehaauKkLgXksIW3UtIXR
f+7ASPPE7G1O/DLf6aj3uwoZc0XwTqMm44xagPthw5otxJc3cfKjdN4gMPfaulsGkL0biX3G0DZJ
U/GXer54OL4hkcfIFKan8U1J6/11GerF6/yIcCNe73Q59KnWYcgt1+2YPHGDziI4Ab9Ufd3UqtbX
zK/tpdrUKTMkAN2Bxqg8bQomYRzDCruO9KleExvF8Wv75PFopYBMerp2wLFVqaD4etE0rzCjkQIe
xQsfRwI4gkL7f/I8gQ2aO2RsgoUEDvn8kfffQ6Gn5vu5jzXIbZsx2WmEktsutNoxggJhMIICXQIB
ATBfMEsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSEwHwYDVQQDExhH
bG9iYWxTaWduIFNNSU1FIENBIDIwMTgCEAFUGRPesObKQM5f7L5fEnEwDQYJYIZIAWUDBAIBBQCg
gdQwLwYJKoZIhvcNAQkEMSIEII9V70kGrT15nKkGxQ8YRBxbD/2ynMqXB4Z4lH62Kl/SMBgGCSqG
SIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIwMDkwNzEyMDQxM1owaQYJKoZI
hvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG
9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEF
AASCAQBrVto/2tl7G9799ipAgoxx8o+5Q43Nn3AJsOK40HQSeykyrAIVzQfwTPsxGBIP5pkKjuOd
kieoa9B8QmBnaynfORdEtamGU55LHEe75yVIe5tDAGIVeYsaHjEPDDSxcSel64blTW8ojZQC/W/w
9e04JYnpKipO3oqHhnZyPBuWJMuoULJ8BLRMs7+gn2aovyfWiX+/gb0SX8EncGItICzc7nXCBkdx
NaUAxdz0+2apI2Vplhfc9Io6OnHjXEln4MvamCu6o4JrZ8fqdbbC1mUsnNLuRhxmNx0OkxNXKUug
DarElTMT83ow1onYo8p+cqFeatLkELNg1B3rhuk9BF5K
--0000000000004e4b2205aeb8047b--
